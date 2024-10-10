<script>
    let tabs = [
        {name: 'Home', link:'#home'},
        {name: 'About', link:'#about'},
        {name: 'Shop', link:'#shop'},
    ];
</script>

<header class="sticky top-0 duration-200 px-6 py-6 flex items-center justify-between bg-gray-900">
    <a href="#home">
        <img src="/images/logo.png" alt="logo" class="w-20"/>
    </a>
    <div class="sm:flex items-center gap-4">
        {#each tabs as tab, index}
            <a href={tab.link} class="hover:text-yellow-400 duration-200">
                <p>{tab.name}</p>
            </a>
        {/each}
    </div>
    <button class="hover:text-yellow-400 duration-200">
        <i class="fa-solid fa-cart-shopping"></i>
    </button>
    <div>
        <button class="bg-slate-500 hover:bg-yellow-400 text-white font-popins hover:text-slate-700 py-2 px-4 rounded duration-200">
            <a href="#register">Register</a>
        </button>
    </div>
</header>