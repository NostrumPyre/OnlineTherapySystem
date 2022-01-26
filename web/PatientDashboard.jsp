<%-- 
    Document   : header
    Created on : Jan 5, 2022, 6:03:37 PM
    Author     : Ilyas
--%>

<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset = "utf-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <link href = "" rel = "stylesheet">
        <script src ="https://cdn.tailwindcss.com"></script>
        <script src = "https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
        <script type = "module" src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src = "https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </head>
    <body> 
        <div class = "md:flex flex-col md:flex-row md:min-h-screen w-full">
            <div @click.away = "open = false" class = "bg-gray-100 shadow-lg  flex flex-col w-full md:w-64 text-gray-700  dark-mode:text-gray-200 dark-mode:bg-gray-800 flex-shrink-0" x-data = "{ open: false }">
                <div class = "flex-shrink-0 px-8 py-4 flex flex-row items-center justify-between">
                    <a href = "#" class = "text-lg font-semibold tracking-widest text-indigo-400 uppercase rounded-lg dark-mode:text-white focus:outline-none focus:shadow-outline">
                        <p>Therapion</p>
                    </a>
                    <button class = "rounded-lg md:hidden rounded-lg focus:outline-none focus:shadow-outline" @click = "open = !open">
                        <svg fill = "currentColor" viewBox = "0 0 20 20" class = "w-6 h-6">
                            <path x-show = "!open" fill-rule = "evenodd" d = "M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM9 15a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1z" clip-rule = "evenodd"></path>
                            <path x-show = "open" fill-rule = "evenodd" d = "M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule = "evenodd"></path>
                        </svg>
                    </button>
                </div>
                <nav :class = "{'block': open, 'hidden': !open}" class = "flex-grow md:block px-4 pb-4 md:pb-0 md:overflow-y-auto">
                    <a class = "block px-4 py-2 mt-2 text-sm font-semibold text-white bg-indigo-600 rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-gray-900 focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href = "PatientDashboard.jsp">Dashboard</a>
                    <a class = "block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href = "#">Make Appointment</a>
                    <a class = "block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href = "#">Therapist List</a>
                    <a class = "block px-4 py-2 mt-2 text-sm font-semibold text-indigo-600 bg-transparent rounded-lg dark-mode:bg-transparent dark-mode:hover:bg-indigo-600 dark-mode:focus:bg-indigo-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 hover:text-white focus:text-gray-900 hover:bg-indigo-600 focus:bg-white focus:outline-none focus:shadow-outline" href = "#">Community Feedback</a>
                </nav>
            </div>
            <div class = "py-16 px-24  w-full  bg-indigo-300 bg-opacity-50">
                <div class = "flex justify-between">
                    <h1 class = "text-3xl mb-10 text-indigo-600 font-semibold">Dashboard</h1>
                </div>
                <div class = "flex flex-col">
                    <div class = "-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                        <div class = "py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                            <div class = "mt-4 w-full grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4">
                                <div class = "bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8">
                                    <div class = "flex items-center">
                                        <div class = "flex-shrink-0">
                                            <span class = "text-2xl sm:text-3xl leading-none font-bold text-gray-900">0</span>
                                            <h3 class = "text-base font-normal text-gray-500">Appointment</h3>
                                        </div>
                                        <div class = "ml-5 w-0 flex items-center justify-end flex-1 text-indigo-500 text-3xl font-bold">
                                            <ion-icon name = "medkit"></ion-icon>   
                                        </div>
                                    </div>
                                </div>
                                <div class = "bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8">
                                    <div class = "flex items-center">
                                        <div class = "flex-shrink-0">
                                            <span class = "text-2xl sm:text-3xl leading-none font-bold text-gray-900">0</span>
                                            <h3 class = "text-base font-normal text-gray-500">Therapist List</h3>
                                        </div>
                                        <div class = "ml-5 w-0 flex items-center justify-end flex-1 text-indigo-500 text-3xl font-bold">
                                            <ion-icon name = "git-network"></ion-icon>
                                        </div>
                                    </div>
                                </div>
                                <div class = "bg-white shadow rounded-lg p-4 sm:p-6 xl:p-8">
                                    <div class = "flex items-center">
                                        <div class = "flex-shrink-0">
                                            <span class = "text-2xl sm:text-3xl leading-none font-bold text-gray-900">0</span>
                                            <h3 class = "text-base font-normal text-gray-500">Community Feedback</h3>
                                        </div>
                                        <div class = "ml-5 w-0 flex items-center justify-end flex-1 text-indigo-500 text-3xl font-bold">
                                            <ion-icon name = "fitness"></ion-icon>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>