<div class="message">
    <h4>Hi ,</h4>
    <p>{{$user->name}}</p>

    <h4>Thank you for create new account. Please verify your account</h4>
    <br>
    <a href="{{$link}}" class="btn btn-info">Click here and verify your account</a>
    <br>
    <p>
        <b>The {{get_option('app_name')}} Team</b>
    </p>
</div>
