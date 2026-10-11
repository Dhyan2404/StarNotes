package org.apache.poi.xssf.binary;

import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public enum XSSFBRecordType {
    BrtCellBlank(1),
    BrtCellRk(2),
    BrtCellError(3),
    BrtCellBool(4),
    BrtCellReal(5),
    BrtCellSt(6),
    BrtCellIsst(7),
    BrtFmlaString(8),
    BrtFmlaNum(9),
    BrtFmlaBool(10),
    BrtFmlaError(11),
    BrtRowHdr(0),
    BrtCellRString(62),
    BrtBeginSheet(129),
    BrtWsProp(147),
    BrtWsDim(148),
    BrtColInfo(60),
    BrtBeginSheetData(145),
    BrtEndSheetData(146),
    BrtHLink(494),
    BrtBeginHeaderFooter(479),
    BrtBeginCommentAuthors(630),
    BrtEndCommentAuthors(StandardNames.XS_UNTYPED_ATOMIC),
    BrtCommentAuthor(632),
    BrtBeginComment(635),
    BrtCommentText(IPTC.TAG_RASTERIZED_CATPTION),
    BrtEndComment(636),
    BrtXf(47),
    BrtFmt(44),
    BrtBeginFmts(615),
    BrtEndFmts(StandardNames.XS_RESTRICTION),
    BrtBeginCellXFs(617),
    BrtEndCellXFs(StandardNames.XS_SELECTOR),
    BrtBeginCellStyleXFS(StandardNames.XS_WHITE_SPACE),
    BrtEndCellStyleXFS(IPTC.TAG_SOURCE),
    BrtSstItem(19),
    BrtBeginSst(159),
    BrtEndSst(160),
    BrtBundleSh(156),
    BrtAbsPath15(2071),
    Unimplemented(-1);

    private static final Map<Integer, XSSFBRecordType> TYPE_MAP = new HashMap();

    /* renamed from: id */
    private final int f111822id;

    static {
        for (XSSFBRecordType xSSFBRecordType : values()) {
            TYPE_MAP.put(Integer.valueOf(xSSFBRecordType.getId()), xSSFBRecordType);
        }
    }

    XSSFBRecordType(int i) {
        this.f111822id = i;
    }

    public static XSSFBRecordType lookup(int i) {
        XSSFBRecordType xSSFBRecordType = TYPE_MAP.get(Integer.valueOf(i));
        return xSSFBRecordType == null ? Unimplemented : xSSFBRecordType;
    }

    public int getId() {
        return this.f111822id;
    }
}
