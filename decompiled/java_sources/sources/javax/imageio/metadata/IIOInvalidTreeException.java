package javax.imageio.metadata;

import javax.imageio.IIOException;
import org.w3c.dom.Node;

/* loaded from: classes5.dex */
public class IIOInvalidTreeException extends IIOException {
    private static final long serialVersionUID = -1314083172544132777L;
    protected Node offendingNode;

    public IIOInvalidTreeException(String str, Node node) {
        super(str);
        this.offendingNode = node;
    }

    public Node getOffendingNode() {
        return this.offendingNode;
    }

    public IIOInvalidTreeException(String str, Throwable th, Node node) {
        super(str, th);
        this.offendingNode = node;
    }
}
