<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Bootstrap Core CSS -->
{{--    <link href="{{asset('css/app.css')}}" rel="stylesheet">--}}
    <link href="{{asset('css/libs.css')}}" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




</head>

<body id="admin-page" style="padding-top: 0;">

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Home</a>
        </div>
        <!-- /.navbar-header -->



        <ul class="nav navbar-top-links navbar-right">


            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    {{ Auth::user()->name }}
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="{{ url('/logout') }}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->


        </ul>


        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
{{--                    <li class="sidebar-search">--}}
{{--                        <div class="input-group custom-search-form">--}}
{{--                            <input type="text" class="form-control" placeholder="Search...">--}}
{{--                            <span class="input-group-btn">--}}
{{--                                    <button class="btn btn-default" type="button">--}}
{{--                                        <i class="fa fa-search"></i>--}}
{{--                                    </button>--}}
{{--                                </span>--}}
{{--                        </div>--}}
{{--                        <!-- /input-group -->--}}
{{--                    </li>--}}

                    @if(!Auth::user()->role_id)
                        <li>
                            <a href="/admin"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                    @endif

                    @if(Auth::user()->role_id)
                        @if(Auth::user()->role->name !== 'Administrator')
                            <li>
                                <a href="/admin"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                        @else
                            <li>
                                <a href="/admin"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-users fa-fw"></i>Users<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('users.index') }}">All Users</a>
                                    </li>

                                    <li>
                                        <a href="{{ route('users.create') }}">Create User</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i> Posts<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('posts.index') }}">All Posts</a>
                                    </li>

                                    <li>
                                        <a href="{{ route('posts.create') }}">Create Post</a>
                                    </li>

                                    <li>
                                        <a href="{{ route('comments.index') }}">All Comments</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>


                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Categories<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('categories.index') }}">All Categories</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>


                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Media<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('media.index') }}">All Photos</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        @endif
                    @endif
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>





{{--    <div class="navbar-default sidebar" role="navigation">--}}
{{--        <div class="sidebar-nav navbar-collapse">--}}
{{--            <ul class="nav" id="side-menu">--}}
{{--                <li>--}}
{{--                    <a href="/profile"><i class="fa fa-dashboard fa-fw"></i>Profile</a>--}}
{{--                </li>--}}




{{--                <li>--}}
{{--                    <a href="#"><i class="fa fa-wrench fa-fw"></i> Posts<span class="fa arrow"></span></a>--}}
{{--                    <ul class="nav nav-second-level">--}}
{{--                        <li>--}}
{{--                            <a href="">All Posts</a>--}}
{{--                        </li>--}}

{{--                        <li>--}}
{{--                            <a href="">Create Post</a>--}}
{{--                        </li>--}}

{{--                    </ul>--}}
{{--                    <!-- /.nav-second-level -->--}}
{{--                </li>--}}





{{--            </ul>--}}

{{--        </div>--}}

    </div>

</div>






<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
{{--                <h1 class="page-header"></h1>--}}

                @yield('content')
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="{{asset('js/libs.js')}}"></script>


@yield('footer')





</body>

</html>
