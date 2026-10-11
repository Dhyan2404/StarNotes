package net.p110sf.saxon.trans;

/* loaded from: classes11.dex */
public class QuitParsingException extends XPathException {
    private boolean notifiedByConsumer;

    public QuitParsingException(boolean z) {
        super("The input file has not been read to completion", "SXQP0001");
        this.notifiedByConsumer = z;
    }

    public boolean isNotifiedByConsumer() {
        return this.notifiedByConsumer;
    }
}
