package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.BodyElementHandler;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.BodyElementType;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFSDT;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public abstract class XWPFBodyElementHandler<B extends IBodyElement> implements BodyElementHandler<B>, Closeable {
    protected XWPFContext context;
    protected Logger LOG = LogManager.getLogger(getClass());
    protected int paragraphSize = 1;

    /* renamed from: org.apache.poi.convert.xwpf.handler.XWPFBodyElementHandler$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194271 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType;

        static {
            int[] iArr = new int[BodyElementType.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType = iArr;
            try {
                iArr[BodyElementType.PARAGRAPH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType[BodyElementType.CONTENTCONTROL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType[BodyElementType.TABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public XWPFBodyElementHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
    }

    public static XWPFBodyElementHandler<?> createHandler(XWPFContext xWPFContext, IBodyElement iBodyElement) {
        int i = C194271.$SwitchMap$org$apache$poi$xwpf$usermodel$BodyElementType[iBodyElement.getElementType().ordinal()];
        if (i == 1) {
            return new XWPFParagraphHandler(xWPFContext, (XWPFParagraph) iBodyElement);
        }
        if (i == 2) {
            return new XWPFSDTHandler(xWPFContext, (XWPFSDT) iBodyElement);
        }
        if (i != 3) {
            return null;
        }
        return new XWPFTableHandler(xWPFContext, (XWPFTable) iBodyElement);
    }

    public static int handleBodyElement(XWPFContext xWPFContext, IBodyElement iBodyElement, Element element, int i, int i2, int i3) {
        XWPFBodyElementHandler<?> createHandler = createHandler(xWPFContext, iBodyElement);
        if (WordToHtmlUtils.isNull(createHandler)) {
            CloseUtils.close(iBodyElement);
            return 0;
        }
        try {
            createHandler.handleIBodyElement(element, i, i2, i3);
            return createHandler.paragraphSize;
        } finally {
            CloseUtils.close(createHandler);
        }
    }

    public void handleIBodyElement(Element element, int i, int i2, int i3) {
        handleBodyElement(element, i, i2, i3);
    }
}
