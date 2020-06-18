class browser{
    async Open(url: string) {       
        await page.goto(url, {waitUntil: 'networkidle2'});

    } 
}

