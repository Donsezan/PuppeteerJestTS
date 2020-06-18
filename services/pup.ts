const puppeteer = require('puppeteer-core');
const request = require('request-promise');

const options = {
	uri: `http://localhost:9222/json/version`,
	json: true,
	resolveWithFullResponse: true
};

export async function pup(n: number): Promise<string> {
    const response = await request(options);   
    const browser =  await puppeteer.connect({browserWSEndpoint: response.body.webSocketDebuggerUrl});
    const page = await browser.newPage();
    await page.goto('https://ya.ru', {waitUntil: 'networkidle2'});
    await page.screenshot({path: 'example.png'});
   
    //var cont = await page.content();
    //console.log(cont);
    //await page.screenshot({path: 'screenshot.png'});
    
    await page.close();
    browser.disconnect();
    return "1 2 ";
}
