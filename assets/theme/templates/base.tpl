<!DOCTYPE html>
<html lang="{'culture_key' | config}">
<head>
    {include 'file:chunks/layout/meta.tpl'}
</head>
<body>
    {include 'file:chunks/layout/header.tpl'}

    <main class="main">
        {block 'main'}{/block}
    </main>

    {include 'file:chunks/layout/footer.tpl'}

    {include 'file:chunks/forms/thankyou.tpl'}

    {include 'file:chunks/forms/modal_order.tpl'}

    {include 'file:chunks/cookies/cookies.tpl'}

    {block 'modals'}{/block}
    
    
    
</body>
</html>