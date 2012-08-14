# Inko（インコ）

　　　　　γ'"´｀"''ヽ  
　　 　 　/ 　 ●　　ｌ  
　　　　/⌒)　　Oo ミ  
　　　　ヽｌ'l　 wwWW  
　　　　　 ﾉ　　　　　ヽ  
　　　　　ｌ　　,---　　ヽ  
　　　　　ｌ　　ヽ)ヽヽヾヽ  
　　　　　ヽ　　　ヽヽヾヽヽ  
　　　　　　ヽ　　　ヽヾヽヽヽ  
　　　　　　　ヽ　　　ヽヽヾヽヽ  
　　　　　　　　ヽ　　　ヽヽヽ　三三三三三∑  
　　　　　　　　　丶､＿ヽヾヽ  
　　　　　　　　　　((((　))))

Inko is Twitter-call-off client for MacOS X.
Inko means parakeet in Japanese.

## Installation

    $ gem install inko

## Usage

1. Make your own client and get consumer key and OAuth key at https://dev.twitter.com/ to authenticate.
2. Run `inko`. If you want to run `inko` as daemon, add `--daemon` option.
3. If you want some help, add `--help` option.

## 日本語読み上げ (call off in Japanese)

日本語を読み上げるには，日本語音声(Kyoko)をダウンロードする必要があります．
`システム環境設定→音声入力と読み上げ→システムの声→カスタマイズ`と進んで，
ダウンロードしてください．
`~/.inkorc.yml` の voice\_actor には Kyoko を指定して下さい．

## LICENSE: MIT License

    Copyright (c) 2012 rhysd

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
    THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
