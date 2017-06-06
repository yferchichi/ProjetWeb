/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ThreadVote;

/**
 *
 * @author TOSHIBA PC
 */
public class RunVoteVideo implements Runnable {

    @Override
    public void run() {
        Long tempstart = System.currentTimeMillis();
        Long tempsEnd = System.currentTimeMillis();
        while (tempsEnd >= tempstart + 1800000) {
            tempsEnd = System.currentTimeMillis();
            System.out.println("RunVoteVideo.run()");
        }
        Thread.currentThread().stop();

    }

}
