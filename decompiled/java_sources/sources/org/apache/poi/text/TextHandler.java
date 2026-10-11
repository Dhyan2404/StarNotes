package org.apache.poi.text;

import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.DrawTextFragment2;
import org.apache.poi.sl.draw.DrawTextPart;
import org.apache.poi.util.CollectionUtils;

/* loaded from: classes13.dex */
public class TextHandler implements ITextHandler {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TextHandler.class);
    private Rectangle2D activeAnchor;
    private TextSheet activeSheet;
    private int sheetSize;
    private TextSheet[] textSheets;
    private AffineTransform transform = new AffineTransform();
    private int graphicsID = -1;
    private Highlight highlight = Utils.getHighlight();

    public TextHandler(int i) {
        this.sheetSize = i;
        this.textSheets = new TextSheet[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.textSheets[i2] = new TextSheet();
        }
    }

    private AffineTransform createInverse(AffineTransform affineTransform) {
        try {
            return affineTransform.createInverse();
        } catch (NoninvertibleTransformException e) {
            LOG.atError().withThrowable(e).log();
            return affineTransform;
        }
    }

    private boolean handleLineOfParagraph(Graphics2D graphics2D, DrawTextFragment2 drawTextFragment2, AffineTransform affineTransform, Piece piece, long j) {
        List<DrawTextPart> partList = drawTextFragment2.getPartList();
        if (CollectionUtils.isNullOrEmpty(partList)) {
            return false;
        }
        Line line = new Line(affineTransform, j, piece.getEndPos());
        line.calculateWordBounds(graphics2D, affineTransform, partList, this.highlight);
        if (line.isEmpty()) {
            return false;
        }
        piece.addLine(line);
        return true;
    }

    private void handleTextInternal(Graphics2D graphics2D, List<DrawTextFragment2> list) {
        TextSheet textSheet = this.activeSheet;
        Rectangle2D rectangle2D = this.activeAnchor;
        if (textSheet.isCompleted()) {
            return;
        }
        AffineTransform transform = graphics2D.getTransform();
        long degree = Utils.getDegree(transform);
        if (Utils.isRightAngle(degree)) {
            AffineTransform inverseTransform = inverseTransform(transform);
            int currentPos = textSheet.getCurrentPos();
            Piece piece = textSheet.getPiece(rectangle2D);
            if (piece == null) {
                piece = new Piece(inverseTransform, degree, currentPos);
                textSheet.add(rectangle2D, piece);
            }
            Piece piece2 = piece;
            Iterator<DrawTextFragment2> it2 = list.iterator();
            boolean z = false;
            while (it2.hasNext()) {
                z |= handleLineOfParagraph(graphics2D, it2.next(), inverseTransform, piece2, degree);
            }
            if (z) {
                piece2.getLine(piece2.size() - 1).setParagraphEnd(true);
            }
            textSheet.setCurrentPos(piece2.getEndPos());
        }
    }

    private AffineTransform inverseTransform(AffineTransform affineTransform) {
        if (this.transform.isIdentity()) {
            return affineTransform;
        }
        AffineTransform affineTransform2 = new AffineTransform(this.transform);
        affineTransform2.concatenate(affineTransform);
        return affineTransform2;
    }

    public void bindGraphics(Graphics2D graphics2D) {
        this.graphicsID = graphics2D == null ? -1 : graphics2D.hashCode();
    }

    public TextSheet getActiveSheet() {
        return this.activeSheet;
    }

    public int getSheetSize() {
        return this.sheetSize;
    }

    public TextSheet getTextSheet(int i) {
        return this.textSheets[i];
    }

    @Override // org.apache.poi.text.ITextHandler
    public void handleText(Graphics2D graphics2D, List<DrawTextFragment2> list) {
        if (isBinding(graphics2D) && CollectionUtils.isNonBlank(list)) {
            handleTextInternal(graphics2D, list);
        }
    }

    public boolean isBinding(Graphics2D graphics2D) {
        return this.graphicsID == graphics2D.hashCode();
    }

    public List<Selection> search(SearchOptions searchOptions, int i) {
        TextSheet textSheet = this.textSheets[i];
        ArrayList arrayList = new ArrayList();
        textSheet.search(searchOptions, arrayList);
        return arrayList;
    }

    public void setActiveSheet(int i) {
        this.activeSheet = this.textSheets[i];
    }

    @Override // org.apache.poi.text.ITextHandler
    public void setAnchor(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (isBinding(graphics2D)) {
            this.activeAnchor = rectangle2D.getBounds2D();
        }
    }

    public TextHandler setTransform(AffineTransform affineTransform) {
        if (affineTransform.isIdentity()) {
            this.transform.setToIdentity();
        } else {
            this.transform.setTransform(createInverse(affineTransform));
        }
        return this;
    }
}
