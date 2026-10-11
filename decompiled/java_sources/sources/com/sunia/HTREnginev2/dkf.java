package com.sunia.HTREnginev2;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.evernote.client.android.login.EvernoteLoginTask;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.ArrayList;
import java.util.List;
import javax.xml.datatype.DatatypeConstants;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.math3.util.FastMath;
import org.apache.poi.util.CodePageUtil;

/* loaded from: classes4.dex */
public final class dkf {

    /* renamed from: a */
    public final List<int[]> f67958a = new ArrayList();

    /* renamed from: b */
    public final List<String> f67959b = new ArrayList();

    /* renamed from: a */
    public final void m53669a(int[] iArr, String str) {
        this.f67958a.add(iArr);
        this.f67959b.add(str);
    }

    /* renamed from: b */
    public final synchronized void m53670b() {
        if (this.f67958a.isEmpty()) {
            m53669a(new int[]{0, 19}, "US/CA");
            m53669a(new int[]{30, 39}, "US");
            m53669a(new int[]{60, 139}, "US/CA");
            m53669a(new int[]{300, 379}, "FR");
            m53669a(new int[]{380}, "BG");
            m53669a(new int[]{383}, "SI");
            m53669a(new int[]{StandardNames.XML_BASE}, "HR");
            m53669a(new int[]{StandardNames.XML_LANG}, "BA");
            m53669a(new int[]{400, 440}, "DE");
            m53669a(new int[]{450, 459}, "JP");
            m53669a(new int[]{460, 469}, "RU");
            m53669a(new int[]{471}, "TW");
            m53669a(new int[]{474}, "EE");
            m53669a(new int[]{475}, "LV");
            m53669a(new int[]{TarConstants.XSTAR_ATIME_OFFSET}, "AZ");
            m53669a(new int[]{477}, "LT");
            m53669a(new int[]{478}, "UZ");
            m53669a(new int[]{479}, "LK");
            m53669a(new int[]{JsonParser.DUPLICATES_SPECIFIED}, "PH");
            m53669a(new int[]{481}, "BY");
            m53669a(new int[]{482}, "UA");
            m53669a(new int[]{484}, "MD");
            m53669a(new int[]{485}, "AM");
            m53669a(new int[]{486}, "GE");
            m53669a(new int[]{487}, "KZ");
            m53669a(new int[]{489}, "HK");
            m53669a(new int[]{490, 499}, "JP");
            m53669a(new int[]{500, 509}, "GB");
            m53669a(new int[]{520}, "GR");
            m53669a(new int[]{StandardNames.XS_BASE64_BINARY}, ExpandedProductParsedResult.POUND);
            m53669a(new int[]{529}, "CY");
            m53669a(new int[]{531}, "MK");
            m53669a(new int[]{StandardNames.XS_NEGATIVE_INTEGER}, "MT");
            m53669a(new int[]{539}, "IE");
            m53669a(new int[]{StandardNames.XS_NON_NEGATIVE_INTEGER, IPTC.TAG_EXPIRATION_DATE}, "BE/LU");
            m53669a(new int[]{StandardNames.XS_ID}, "PT");
            m53669a(new int[]{569}, "IS");
            m53669a(new int[]{570, StandardNames.XS_ANY}, "DK");
            m53669a(new int[]{StandardNames.XS_DOCUMENTATION}, "PL");
            m53669a(new int[]{StandardNames.XS_FIELD}, "RO");
            m53669a(new int[]{StandardNames.XS_KEY}, "HU");
            m53669a(new int[]{600, 601}, "ZA");
            m53669a(new int[]{603}, "GH");
            m53669a(new int[]{608}, "BH");
            m53669a(new int[]{609}, "MU");
            m53669a(new int[]{611}, "MA");
            m53669a(new int[]{613}, "DZ");
            m53669a(new int[]{StandardNames.XS_RESTRICTION}, "KE");
            m53669a(new int[]{StandardNames.XS_SELECTOR}, "CI");
            m53669a(new int[]{StandardNames.XS_SEQUENCE}, "TN");
            m53669a(new int[]{StandardNames.XS_SIMPLE_TYPE}, "SY");
            m53669a(new int[]{622}, "EG");
            m53669a(new int[]{StandardNames.XS_UNION}, "LY");
            m53669a(new int[]{StandardNames.XS_UNIQUE}, "JO");
            m53669a(new int[]{StandardNames.XS_WHITE_SPACE}, "IR");
            m53669a(new int[]{IPTC.TAG_SOURCE}, "KW");
            m53669a(new int[]{IPTC.TAG_COPYRIGHT_NOTICE}, "SA");
            m53669a(new int[]{629}, "AE");
            m53669a(new int[]{StandardNames.XSI, 649}, "FI");
            m53669a(new int[]{690, 695}, BaseTLSIdentity.CERT_ATTRIBUTE_COMMON_NAME);
            m53669a(new int[]{700, 709}, HlsPlaylistParser.f26143N0);
            m53669a(new int[]{729}, "IL");
            m53669a(new int[]{730, 739}, "SE");
            m53669a(new int[]{740}, "GT");
            m53669a(new int[]{741}, "SV");
            m53669a(new int[]{742}, "HN");
            m53669a(new int[]{743}, "NI");
            m53669a(new int[]{744}, "CR");
            m53669a(new int[]{745}, "PA");
            m53669a(new int[]{746}, "DO");
            m53669a(new int[]{FastMath.f109852a}, "MX");
            m53669a(new int[]{754, 755}, "CA");
            m53669a(new int[]{759}, "VE");
            m53669a(new int[]{760, 769}, "CH");
            m53669a(new int[]{770}, "CO");
            m53669a(new int[]{773}, "UY");
            m53669a(new int[]{775}, "PE");
            m53669a(new int[]{777}, "BO");
            m53669a(new int[]{779}, "AR");
            m53669a(new int[]{780}, "CL");
            m53669a(new int[]{784}, "PY");
            m53669a(new int[]{785}, "PE");
            m53669a(new int[]{786}, "EC");
            m53669a(new int[]{789, 790}, "BR");
            m53669a(new int[]{CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH, 839}, "IT");
            m53669a(new int[]{DatatypeConstants.MIN_TIMEZONE_OFFSET, 849}, "ES");
            m53669a(new int[]{850}, "CU");
            m53669a(new int[]{EvernoteLoginTask.f21157t}, "SK");
            m53669a(new int[]{EvernoteLoginTask.f21158u}, "CZ");
            m53669a(new int[]{860}, "YU");
            m53669a(new int[]{865}, "MN");
            m53669a(new int[]{867}, "KP");
            m53669a(new int[]{868, 869}, "TR");
            m53669a(new int[]{870, 879}, "NL");
            m53669a(new int[]{880}, "KR");
            m53669a(new int[]{885}, "TH");
            m53669a(new int[]{888}, "SG");
            m53669a(new int[]{890}, "IN");
            m53669a(new int[]{893}, "VN");
            m53669a(new int[]{896}, "PK");
            m53669a(new int[]{899}, "ID");
            m53669a(new int[]{900, 919}, "AT");
            m53669a(new int[]{930, 939}, "AU");
            m53669a(new int[]{don.f68078d, CodePageUtil.CP_MS949}, "AZ");
            m53669a(new int[]{955}, "MY");
            m53669a(new int[]{958}, "MO");
        }
    }

    /* renamed from: c */
    public String m53671c(String str) {
        int[] iArr;
        int i;
        m53670b();
        int parseInt = Integer.parseInt(str.substring(0, 3));
        int size = this.f67958a.size();
        for (int i2 = 0; i2 < size && parseInt >= (i = (iArr = this.f67958a.get(i2))[0]); i2++) {
            if (iArr.length != 1) {
                i = iArr[1];
            }
            if (parseInt <= i) {
                return this.f67959b.get(i2);
            }
        }
        return null;
    }
}
