<?php echo $text_title_order_type; ?>
<?php if (isset($terminals) && !empty($terminals))  {?>




<script>


    function loadjscssfile(filename, filetype,id){
        if (filetype=="js"){ //if filename is a external JavaScript file
            var fileref=document.createElement('script')
            fileref.setAttribute("type","text/javascript")
            fileref.setAttribute("src", filename)
        }
        else if (filetype=="css"){ //if filename is an external CSS file
            var fileref=document.createElement("link")
            fileref.setAttribute("rel", "stylesheet")
            fileref.setAttribute("type", "text/css")
            fileref.setAttribute("href", filename)

        }
        if (typeof id !== 'undefined'){
            fileref.setAttribute("id",id)
        }
        let el = document.querySelector("#"+id);
        if (el){
            document.querySelector("#"+id).remove();
        }
        if (typeof fileref!="undefined") {
            document.getElementsByTagName("head")[0].appendChild(fileref);
        }
    }

    loadjscssfile("catalog/view/stylesheet/qwqer/shipping_qwqer.css", "css","accss");
    loadjscssfile("catalog/view/javascript/qwqer/shipping_qwqer.js", "js","acjs");

   


</script>
<?php } ?>