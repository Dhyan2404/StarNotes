package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisions extends XmlObject {
    public static final DocumentFactory<CTRevisions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisions7d97type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRevisionAutoFormatting addNewRaf();

    CTRevisionCellChange addNewRcc();

    CTRevisionConflict addNewRcft();

    CTRevisionComment addNewRcmt();

    CTRevisionCustomView addNewRcv();

    CTRevisionDefinedName addNewRdn();

    CTRevisionFormatting addNewRfmt();

    CTRevisionInsertSheet addNewRis();

    CTRevisionMove addNewRm();

    CTRevisionQueryTableField addNewRqt();

    CTRevisionRowColumn addNewRrc();

    CTRevisionSheetRename addNewRsnm();

    CTRevisionAutoFormatting getRafArray(int i);

    CTRevisionAutoFormatting[] getRafArray();

    List<CTRevisionAutoFormatting> getRafList();

    CTRevisionCellChange getRccArray(int i);

    CTRevisionCellChange[] getRccArray();

    List<CTRevisionCellChange> getRccList();

    CTRevisionConflict getRcftArray(int i);

    CTRevisionConflict[] getRcftArray();

    List<CTRevisionConflict> getRcftList();

    CTRevisionComment getRcmtArray(int i);

    CTRevisionComment[] getRcmtArray();

    List<CTRevisionComment> getRcmtList();

    CTRevisionCustomView getRcvArray(int i);

    CTRevisionCustomView[] getRcvArray();

    List<CTRevisionCustomView> getRcvList();

    CTRevisionDefinedName getRdnArray(int i);

    CTRevisionDefinedName[] getRdnArray();

    List<CTRevisionDefinedName> getRdnList();

    CTRevisionFormatting getRfmtArray(int i);

    CTRevisionFormatting[] getRfmtArray();

    List<CTRevisionFormatting> getRfmtList();

    CTRevisionInsertSheet getRisArray(int i);

    CTRevisionInsertSheet[] getRisArray();

    List<CTRevisionInsertSheet> getRisList();

    CTRevisionMove getRmArray(int i);

    CTRevisionMove[] getRmArray();

    List<CTRevisionMove> getRmList();

    CTRevisionQueryTableField getRqtArray(int i);

    CTRevisionQueryTableField[] getRqtArray();

    List<CTRevisionQueryTableField> getRqtList();

    CTRevisionRowColumn getRrcArray(int i);

    CTRevisionRowColumn[] getRrcArray();

    List<CTRevisionRowColumn> getRrcList();

    CTRevisionSheetRename getRsnmArray(int i);

    CTRevisionSheetRename[] getRsnmArray();

    List<CTRevisionSheetRename> getRsnmList();

    CTRevisionAutoFormatting insertNewRaf(int i);

    CTRevisionCellChange insertNewRcc(int i);

    CTRevisionConflict insertNewRcft(int i);

    CTRevisionComment insertNewRcmt(int i);

    CTRevisionCustomView insertNewRcv(int i);

    CTRevisionDefinedName insertNewRdn(int i);

    CTRevisionFormatting insertNewRfmt(int i);

    CTRevisionInsertSheet insertNewRis(int i);

    CTRevisionMove insertNewRm(int i);

    CTRevisionQueryTableField insertNewRqt(int i);

    CTRevisionRowColumn insertNewRrc(int i);

    CTRevisionSheetRename insertNewRsnm(int i);

    void removeRaf(int i);

    void removeRcc(int i);

    void removeRcft(int i);

    void removeRcmt(int i);

    void removeRcv(int i);

    void removeRdn(int i);

    void removeRfmt(int i);

    void removeRis(int i);

    void removeRm(int i);

    void removeRqt(int i);

    void removeRrc(int i);

    void removeRsnm(int i);

    void setRafArray(int i, CTRevisionAutoFormatting cTRevisionAutoFormatting);

    void setRafArray(CTRevisionAutoFormatting[] cTRevisionAutoFormattingArr);

    void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange);

    void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr);

    void setRcftArray(int i, CTRevisionConflict cTRevisionConflict);

    void setRcftArray(CTRevisionConflict[] cTRevisionConflictArr);

    void setRcmtArray(int i, CTRevisionComment cTRevisionComment);

    void setRcmtArray(CTRevisionComment[] cTRevisionCommentArr);

    void setRcvArray(int i, CTRevisionCustomView cTRevisionCustomView);

    void setRcvArray(CTRevisionCustomView[] cTRevisionCustomViewArr);

    void setRdnArray(int i, CTRevisionDefinedName cTRevisionDefinedName);

    void setRdnArray(CTRevisionDefinedName[] cTRevisionDefinedNameArr);

    void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting);

    void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr);

    void setRisArray(int i, CTRevisionInsertSheet cTRevisionInsertSheet);

    void setRisArray(CTRevisionInsertSheet[] cTRevisionInsertSheetArr);

    void setRmArray(int i, CTRevisionMove cTRevisionMove);

    void setRmArray(CTRevisionMove[] cTRevisionMoveArr);

    void setRqtArray(int i, CTRevisionQueryTableField cTRevisionQueryTableField);

    void setRqtArray(CTRevisionQueryTableField[] cTRevisionQueryTableFieldArr);

    void setRrcArray(int i, CTRevisionRowColumn cTRevisionRowColumn);

    void setRrcArray(CTRevisionRowColumn[] cTRevisionRowColumnArr);

    void setRsnmArray(int i, CTRevisionSheetRename cTRevisionSheetRename);

    void setRsnmArray(CTRevisionSheetRename[] cTRevisionSheetRenameArr);

    int sizeOfRafArray();

    int sizeOfRccArray();

    int sizeOfRcftArray();

    int sizeOfRcmtArray();

    int sizeOfRcvArray();

    int sizeOfRdnArray();

    int sizeOfRfmtArray();

    int sizeOfRisArray();

    int sizeOfRmArray();

    int sizeOfRqtArray();

    int sizeOfRrcArray();

    int sizeOfRsnmArray();
}
