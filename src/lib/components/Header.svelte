<script>
    let tabs = [
       {name: 'Home', link: '/'},
       {name: 'About', link: '/about'},
       {name: 'Shop', link: '/shop'},
       {name: 'Blog', link: '/blog'},
    ];

 
    let isOpen = false;
 </script>
 
 <header class="sticky top-0 px-6 py-6 flex items-center bg-gray-900 justify-between">
     <div class="left-0">
        <a href="/">
             <img src="/images/logo.png" alt="logo" class="w-20"/>
         </a> 
     </div>
 
     <div class="hidden sm:flex items-center gap-10 transition-all duration-200 ease-in-out">
         {#each tabs as tab}
             <a href={tab.link} class="hover:text-yellow-400 bg-left-bottom bg-gradient-to-r from-yellow-400 to-yellow-400 bg-[length:0%_2px] bg-no-repeat hover:bg-[length:100%_2px] transition-all duration-200 ease-out">
                 <p>{tab.name}</p>
             </a>
         {/each}
     </div>

    <div class="hidden sm:flex items-center gap-4">
        <a href="/cart" class=" hover:text-yellow-400">
            <i class="fa-solid fa-cart-shopping"></i>
        </a>
        <a href="/login" class="py-2 px-3 rounded-full border-2 border-transparent hover:border-yellow-400 hover:text-yellow-400">
            Login
        </a>
        <a href="/register" class="bg-slate-500 hover:bg-yellow-400 font-bold text-white font-popins hover:text-slate-700 py-2 px-4 rounded duration-200">
            Sign Up
        </a>
    </div>

    <button class="sm:hidden text-white" on:click={() => isOpen = !isOpen}>
        <i class="fa-solid fa-bars"></i>
    </button>
</header>

{#if isOpen}
    <div class="bg-gray-900 sm:hidden flex flex-col items-end gap-4 px-6 py-4 transition-opacity duration-200">
        {#each tabs as tab}
            <a href={tab.link} class="text-white hover:text-yellow-400 py-2" on:click={() => isOpen = !isOpen}>
                {tab.name}
            </a>
        {/each}
        <a href="/cart" class="text-white hover:text-yellow-400 py-2" on:click={() => isOpen = !isOpen}>
            Cart
        </a>
        <a href="/login" class="text-white hover:text-yellow-400 py-1 border-2 border-transparent rounded-3xl  hover:border-yellow-400" on:click={() => isOpen = !isOpen}>
            Login
        </a>
        <a href="/register" class="font-bold bg-slate-500 hover:bg-yellow-400 text-white font-popins hover:text-slate-700 py-2 px-4 rounded duration-200" on:click={() => isOpen = !isOpen}>
            Sign up
        </a>
    </div>
{/if}
