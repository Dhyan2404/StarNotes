package org.apache.poi.hslf.usermodel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.MainMaster;
import org.apache.poi.hslf.record.TxMasterStyleAtom;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public final class HSLFSlideMaster extends HSLFMasterSheet {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final List<List<HSLFTextParagraph>> _paragraphs;
    private TxMasterStyleAtom[] _txmaster;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFSlideMaster$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194701 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder;

        static {
            int[] iArr = new int[TextShape.TextPlaceholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder = iArr;
            try {
                iArr[TextShape.TextPlaceholder.BODY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.CENTER_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.HALF_BODY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.QUARTER_BODY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.TITLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder[TextShape.TextPlaceholder.CENTER_TITLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public HSLFSlideMaster(MainMaster mainMaster, int i) {
        super(mainMaster, i);
        this._paragraphs = new ArrayList();
        for (List<HSLFTextParagraph> list : HSLFTextParagraph.findTextParagraphs(getPPDrawing(), this)) {
            if (!this._paragraphs.contains(list)) {
                this._paragraphs.add(list);
            }
        }
    }

    private TextPropCollection getPropHelper(int i, int i2, String str, boolean z) {
        TxMasterStyleAtom[] txMasterStyleAtomArr = this._txmaster;
        if (i >= txMasterStyleAtomArr.length) {
            return null;
        }
        TxMasterStyleAtom txMasterStyleAtom = txMasterStyleAtomArr[i];
        List<TextPropCollection> characterStyles = z ? txMasterStyleAtom.getCharacterStyles() : txMasterStyleAtom.getParagraphStyles();
        int min = Math.min(i2, characterStyles.size() - 1);
        if ("*".equals(str)) {
            return characterStyles.get(min);
        }
        while (min >= 0) {
            TextPropCollection textPropCollection = characterStyles.get(min);
            if (textPropCollection.findByName(str) != null) {
                return textPropCollection;
            }
            min--;
        }
        return null;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public HSLFMasterSheet getMasterSheet() {
        return null;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFMasterSheet
    public TextPropCollection getPropCollection(int i, int i2, String str, boolean z) {
        TextPropCollection propHelper = getPropHelper(i, i2, str, z);
        if (propHelper != null) {
            return propHelper;
        }
        TextShape.TextPlaceholder fromNativeId = TextShape.TextPlaceholder.fromNativeId(i);
        int[] iArr = C194701.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder;
        if (fromNativeId == null) {
            fromNativeId = TextShape.TextPlaceholder.BODY;
        }
        switch (iArr[fromNativeId.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return getPropHelper(TextShape.TextPlaceholder.BODY.nativeId, i2, str, z);
            case 5:
            case 6:
                return getPropHelper(TextShape.TextPlaceholder.TITLE.nativeId, i2, str, z);
            default:
                return null;
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Notes
    public List<List<HSLFTextParagraph>> getTextParagraphs() {
        return this._paragraphs;
    }

    public TxMasterStyleAtom[] getTxMasterStyleAtoms() {
        return this._txmaster;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public void onAddTextShape(HSLFTextShape hSLFTextShape) {
        this._paragraphs.add(hSLFTextShape.getTextParagraphs());
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    /* JADX WARN: Type inference failed for: r7v6, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    /* JADX WARN: Type inference failed for: r7v9, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    @Internal
    public void setSlideShow(HSLFSlideShow hSLFSlideShow) {
        super.setSlideShow(hSLFSlideShow);
        this._txmaster = new TxMasterStyleAtom[9];
        if (getSlideShow() == null || getSlideShow().getDocumentRecord() == null || getSlideShow().getDocumentRecord().getEnvironment() == null) {
            throw new IllegalStateException("Did not find a TxMasterStyleAtom in the current slide show");
        }
        TxMasterStyleAtom txMasterStyleAtom = getSlideShow().getDocumentRecord().getEnvironment().getTxMasterStyleAtom();
        if (txMasterStyleAtom == null) {
            throw new IllegalStateException("Did not find a TxMasterStyleAtom in the current slide show");
        }
        this._txmaster[txMasterStyleAtom.getTextType()] = txMasterStyleAtom;
        for (TxMasterStyleAtom txMasterStyleAtom2 : ((MainMaster) getSheetContainer()).getTxMasterStyleAtoms()) {
            int textType = txMasterStyleAtom2.getTextType();
            TxMasterStyleAtom[] txMasterStyleAtomArr = this._txmaster;
            if (textType < txMasterStyleAtomArr.length && txMasterStyleAtomArr[textType] == null) {
                txMasterStyleAtomArr[textType] = txMasterStyleAtom2;
            }
        }
        Iterator<List<HSLFTextParagraph>> it2 = getTextParagraphs().iterator();
        while (it2.hasNext()) {
            for (HSLFTextParagraph hSLFTextParagraph : it2.next()) {
                int runType = hSLFTextParagraph.getRunType();
                TxMasterStyleAtom[] txMasterStyleAtomArr2 = this._txmaster;
                if (runType >= txMasterStyleAtomArr2.length || txMasterStyleAtomArr2[runType] == null) {
                    throw new HSLFException("Master styles not initialized");
                }
                int indentLevel = hSLFTextParagraph.getIndentLevel();
                List<TextPropCollection> characterStyles = this._txmaster[runType].getCharacterStyles();
                List<TextPropCollection> paragraphStyles = this._txmaster[runType].getParagraphStyles();
                if (characterStyles == null || paragraphStyles == null || characterStyles.size() <= indentLevel || paragraphStyles.size() <= indentLevel) {
                    throw new HSLFException("Master styles not initialized");
                }
            }
        }
    }
}
