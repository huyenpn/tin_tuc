$(document).ready(function () {
    $('.delete').click(function () {
        x = confirm('bạn có chắc là muốn xóa');
        if(x){
            return true
        }else{
            return false
        }
    })
});