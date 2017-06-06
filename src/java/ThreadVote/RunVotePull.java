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
public class RunVotePull implements Runnable {

    @Override
    public void run() {
        Long tempstart = System.currentTimeMillis();
        Long tempsEnd = tempstart;
        while (tempsEnd >= tempstart + 1800000) {
            tempsEnd = System.currentTimeMillis();
            System.out.println("RunVotePull.run()");
        }
        Thread.currentThread().stop();
    }

}
