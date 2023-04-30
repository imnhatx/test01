@face = 0
@group = 0
@comp = 0
ents = Sketchup.active_model.selection


# lọc các đối tượng là component hoặc group
if ents.empty?
    UI.messagebox("CHỌN ĐỐI TƯỢNG CẦN XỬ LÝ.")
else
   result = UI.messagebox("XÁC NHẬN XỬ LÝ ĐỐI TƯỢNG ĐƯỢC CHỌN?", MB_YESNO)
    if result == IDYES
        dequy(ents)
        UI.messagebox("FACE #{@face}. COMPONENT #{@comp}, GROUP #{@group}")
     else
        #huỷ thao tác
        UI.messagebox("HUỶ TÁC VỤ.")
    end
end  

def dequy(ex)
    ex.each{|e|
        # điều kiện để đệ quy
        if e.is_a?(Sketchup::ComponentInstance) 
            # UI.messagebox("đã phát hiện component.")
            ett = e.definition.entities
            dequy(ett)
            @comp += 1
        end
        if e.is_a?(Sketchup::Group) 
            # UI.messagebox("đã phát hiện group.")
            ett = e.entities
            dequy(ett)
            @group += 1
        end
        
        # điều kiện dừng đệ quy
        if e.is_a?(Sketchup::Face)
            # UI.messagebox("đã phát hiện face.")
            @face += 1 
        end
    }
    
end

