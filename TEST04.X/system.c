/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

#include "system.h"




#ifndef ___NOP_MAIN
/*******************************************************************************
 * < CONFIG1L >
 * 
 * WDTEN (ウォッチドッグタイマイネーブル):
 * 0: マイクロコントローラのリセットを監視するウォッチドッグタイマ機能は使用されません。
 * 
 * PLLDIV (PLLディバイダ):
 * 4: この設定では、PLL入力クロックは4で分周されます。
 * 
 * CFGPLLEN (設定時PLL有効):
 * 0: コンフィグレーションメモリの設定中にはPLLが動作しないようになっています。
 * 
 *  * STVREN (スタックリセット有効):
 * 0: スタックポインタがスタックオーバーフローまたはアンダーフローした場合、スタックリセットは実行されません。
 * 
 * XINST (拡張命令セット有効):
 * 1: 拡張命令セットは、通常の命令セットに比べて高度な演算やデバッグ機能を提供します
 * 
 * DEBUG (デバッグモード有効):
 * 1: デバッグモードが有効になっています。デバッグモードでは、デバッグ機能が有効になり、
 * 　 デバッガとの通信やデバッグ操作が可能になります。
 ******************************************************************************/
#pragma config CFGPLLEN = ON
#pragma config WDTEN = OFF          //WDT disabled (enabled by SWDTEN bit)
#pragma config PLLDIV = 4           //Divide by 4 (16 MHz oscillator input)
#pragma config STVREN = OFF          //stack overflow/underflow reset enabled
#pragma config XINST = OFF          //Extended instruction set disabled
//#pragma config DEBUG   = ON


/*******************************************************************************
 * < CONFIG1H >
 * 
 * CPDIVV (システムクロック分周設定):
 * OSC1_PLL1: システムクロックは分周されたPLLクロックの1/1の周波数になります。
 * 
 * CP0 (コードプロテクト0):
 * 1 (有効): コードメモリのセクション0（通常は0x0000〜0x7FFFの範囲）を読み取り保護します。
 * この領域のコードがプログラマブルデバイスの読み込み操作から保護され、改ざんを防ぎます。
 * ただし、書き込み操作には影響しません。
 * 
 ******************************************************************************/
#pragma config CPUDIV = OSC1        //No CPU system clock divide
#pragma config CP0 = OFF            //Program memory is not code-protected

/*******************************************************************************
 * < CONFIG2L >
 * 
 * FOSC (オシレータ設定):
 * HSPLL_HS: 外部クロック(クリスタル)を使用し、PLL (位相ロックループ) を有効にします。
 * PLLは、クロック信号を増幅および周波数変換するために使用され、高速な動作を実現します。
 * 
 * SOSCSEL (セカンダリオシレータ選択):
 * 0: セカンダリオシレータは選択されていません。マイクロコントローラは、主に外部クロック(クリスタル)を使用して動作します。
 * 
 * CLKOEC (クロック出力イネーブル):
 * 0: マイクロコントローラから外部にクロック信号を出力する機能は使用されません。
 * 
 * FCMEN (クロック監視と切り替えイネーブル):
 * 0: クロック監視と自動切り替え機能は無効になっています。
 *    この機能を有効にすると、外部クロックの異常な動作を監視し、自動的に内部オシレータに切り替えることができます。
 * 
 * IESO (内部/外部スイッチオーバー):
 * 0: 内部/外部クロックのスイッチオーバー機能は無効になっています。
 *    この機能を有効にすると、内部オシレータと外部クロックの切り替えを制御できます。
 * 
 ******************************************************************************/
//#pragma config FOSC    = HSPLL_HS  // 外部クロック(クリスタル)を使用し、PLLを有効にする設定
//#pragma config SOSCSEL = 0
//#pragma config CLKOEC  = 0	

#pragma config OSC = HSPLL          //HS oscillator, PLL enabled, HSPLL used by USB
#pragma config FCMEN = OFF          //Fail-Safe Clock Monitor disabled
#pragma config IESO = OFF           //Two-Speed Start-up disabled

/*******************************************************************************
 * < CONFIG2H >
 * 
 * WDTPS (ウォッチドッグタイマポストスケール選択):
 * 0x0F: ウォッチドッグタイマのポストスケール値が0x0Fに設定されています。
 * この設定では、ウォッチドッグタイマが1:32768のポストスケールで動作します。
 * 
 ******************************************************************************/
//#pragma config WDTPS = 0x0f    // Watchdog Timer Postscale Select (1:32768)
#pragma config WDTPS = 32768        //1:32768
/*******************************************************************************
 * < CONFIG3L >
 * 
 * DSWDTPS<3:0> (ディープスリープウォッチドッグタイマポストスケールセレクト):
 * このビットフィールドは、ディープスリープモードでのウォッチドッグタイマのポストスケール値を設定します。
 * 推奨設定は、一般的な設定は、長いポストスケール値を選択することです。
 * 
 * DSWDTEN (ディープスリープウォッチドッグタイマイネーブル):
 * このビットは、ディープスリープモードでのウォッチドッグタイマの動作を有効または無効にします。
 * 推奨設定は、ウォッチドッグタイマの使用が必要な場合は有効にし、必要ない場合は無効にします。
 * 
 * DSBOREN (ディープスリープブラウンアウトリセットイネーブル):
 * このビットは、ディープスリープモードでのブラウンアウトリセット（電源降下時のリセット）の動作を有効または無効にします。
 * 推奨設定は、ブラウンアウトリセットの使用が必要な場合は有効にし、必要ない場合は無効にします。
 * 
 * RTCOSC (リアルタイムクロックソースセレクト):
 * このビットは、リアルタイムクロック（RTC）のソースを選択します。
 * 推奨設定は、内部オシレータを使用する場合は、内部オシレータを選択します。外部クリスタルを使用する場合は、外部クリスタルを選択します。
 * 
 * DSWDTOSC (ディープスリープウォッチドッグタイマクロスオシレータセレクト):
 * このビットは、ディープスリープモードでのウォッチドッグタイマのクロスオシレータのソースを選択します。
 * 推奨設定は、内部オシレータを使用する場合は、内部オシレータを選択します。外部クリスタルを使用する場合は、外部クリスタルを選択します。
 * 
 ******************************************************************************/

#pragma config DSBOREN = OFF        //Zero-Power BOR disabled in Deep Sleep
#pragma config DSWDTEN = OFF        //Disabled
#pragma config DSWDTPS = 8192       //1:8,192 (8.5 seconds)
#pragma config DSWDTOSC = INTOSCREF //DSWDT uses INTOSC/INTRC as clock
//#pragma config RTCOSC = T1OSCREF    //RTCC uses T1OSC/T1CKI as clock
#pragma config RTCOSC = INTOSCREF


/*******************************************************************************
 * < CONFIG3H >
 * 
 * MSSPMSK:
 * このビットフィールドは、MSSP（Master Synchronous Serial Port）モジュールのマスク機能を制御します。
 * マスク機能により、特定のビット位置の送信や受信を無効化することができます。
 * 
 * ADCSEL:
 * A/Dコンバータの変換モードを選択します。10ビット変換モードと12ビット変換モードの
 * 2つのオプションがあります。選択したモードに応じて、A/Dコンバータのビット数と変換の精度が異なります。
 * 
 * IOL1WAY:
 * このビットは、ピンのI/Oレジスタの一度だけの書き込み有効化を制御します
 * 有効な場合、I/Oレジスタは一度だけ書き込みが許可され、その後は変更できなくなります。
 * 
 ******************************************************************************/

//#pragma config MSSPMSK = 0
//#pragma config ADCSEL  = 0

#pragma config IOL1WAY = OFF        //IOLOCK bit can be set and cleared

/*******************************************************************************
 * < CONFIG4L >
 * 
 * WPCFG (Write/Erase Protect Configuration Region Select bit):
 * 1 = 設定ワードページは、WPENDとWPFP<5:0>の設定に関係なく、消去/書き込み保護されません。
 * 0 = 設定ワードページは、WPENDとWPFP<5:0>の設定に関係なく消去/書き込み保護されます。
 * 
 * WPFP<6:0> (Write/Erase Protect Page Start/End Location bits):
 * これらのビットは、WPENDビットと組み合わせて、フラッシュメモリのどのページが書き込み/消去保護されるかを定義します。
 * 7ビット（WPFP<6:0>）は、フラッシュメモリのページの開始位置と終了位置を指定します。
 * 
 ******************************************************************************/
#pragma config WPCFG = OFF          //Write/Erase last page protect Disabled
#pragma config WPFP = PAGE_1        //Write Protect Program Flash Page 0

/*******************************************************************************
 * < CONFIG4H>
 * 
 * LS48MHZ (Low-Speed USB Clock Selection):
 * このビットは、低速USBクロックの選択に関連しています。
 * プロジェクトが48 MHzのシステムクロックを使用し、低速USBクロックを生成する場合は1を選択します。
 * 1 = 48 MHzのシステムクロックが使用され、低速USBクロックは8分周で生成されます。
 * 0 = 24 MHzのシステムクロックが使用され、低速USBクロックは4分周で生成されます。
 * 
 * WPEND (Write-Protect Disable bit):
 * このビットは、フラッシュメモリの特定のページを書き込み/消去保護するかどうかを制御します。
 * 1 = フラッシュページ、WPFP<6:0>から（設定ワードページまで）は書き込み/消去保護されます。
 * 0 = フラッシュページ0からWPFP<6:0>までが書き込み/消去保護されます。
 * 
 * WPDIS (Write-Protect Disable bit):
 * このビットは、フラッシュメモリの書き込み/消去保護を無効にするかどうかを制御します。
 * 1 = WPFP<5:0>、WPEND、WPCFGビットが無視され、すべてのフラッシュメモリが消去または書き込み可能になります。
 * 0 = WPFP<5:0>、WPEND、WPCFGビットが有効であり、選択された範囲に対して消去/書き込み保護が有効です。
 * 
 ******************************************************************************/
//#pragma config LS48MHZ = 1
#pragma config WPEND = PAGE_0       //Start protection at page 0
#pragma config WPDIS = OFF          //WPFP[5:0], WPEND, and WPCFG bits ignored



/** CONFIGURATION Bits **********************************************/
#pragma config MSSP7B_EN = MSK7     //7 Bit address masking


#endif




#if(__XC8_VERSION < 2000)
    #define INTERRUPT interrupt
#else
    #define INTERRUPT __interrupt()
#endif



//==============================================================================
//
// high_priority
//  TIMER0
//  TIMER1
//  RTC
//
// low_priority
//  UART Rx
//  UART Tx
//  USB
//    
//==============================================================================
//id INTERRUPT SYS_InterruptHigh(void)
void __interrupt(high_priority) high_isr(void) 
{     
 
}

//==============================================================================
//
//==============================================================================
void __interrupt(low_priority) low_isr(void) 
{

}
