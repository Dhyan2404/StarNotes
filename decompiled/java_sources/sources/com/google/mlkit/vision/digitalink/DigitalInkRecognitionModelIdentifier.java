package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.util.LocalePreferences;
import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzajb;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaky;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.digitalink.internal.zzn;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sunia.HTREnginev2.iop;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes6.dex */
public class DigitalInkRecognitionModelIdentifier {

    /* renamed from: a */
    public final String f36744a;

    /* renamed from: b */
    public final iop f36745b;

    /* renamed from: c */
    public final boolean f36746c;

    /* renamed from: d */
    public static final Map f36740d = new HashMap();

    /* renamed from: e */
    public static final zzaky f36741e = zzajb.zzz();

    /* renamed from: f */
    public static final zzaky f36742f = zzajb.zzz();

    /* renamed from: g */
    public static final zzaky f36743g = zzajb.zzz();

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AUTODRAW = new DigitalInkRecognitionModelIdentifier("zxx-Zsym-x-autodraw", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EMOJI = new DigitalInkRecognitionModelIdentifier("zxx-Zsye-x-emoji", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SHAPES = new DigitalInkRecognitionModelIdentifier("zxx-Zsym-x-shapes", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AA_LATN = new DigitalInkRecognitionModelIdentifier("aa-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AA_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("aa-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ABS_LATN_ID = new DigitalInkRecognitionModelIdentifier("abs-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ABS_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("abs-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ACE_LATN_ID = new DigitalInkRecognitionModelIdentifier("ace-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ACE_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("ace-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ACT_LATN_NL = new DigitalInkRecognitionModelIdentifier("act-Latn-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ACT_LATN_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("act-Latn-NL-x-gesture", true);

    /* renamed from: AF */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36659AF = new DigitalInkRecognitionModelIdentifier("af");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AF_GESTURE = new DigitalInkRecognitionModelIdentifier("af-x-gesture", true);

    /* renamed from: AM */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36660AM = new DigitalInkRecognitionModelIdentifier("am");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AM_GESTURE = new DigitalInkRecognitionModelIdentifier("am-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ANW_LATN_NG = new DigitalInkRecognitionModelIdentifier("anw-Latn-NG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ANW_LATN_NG_GESTURE = new DigitalInkRecognitionModelIdentifier("anw-Latn-NG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AN_LATN_ES = new DigitalInkRecognitionModelIdentifier("an-Latn-ES");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AN_LATN_ES_GESTURE = new DigitalInkRecognitionModelIdentifier("an-Latn-ES-x-gesture", true);

    /* renamed from: AR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36661AR = new DigitalInkRecognitionModelIdentifier(ArchiveStreamFactory.f105352AR);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AR_GESTURE = new DigitalInkRecognitionModelIdentifier("ar-x-gesture", true);

    /* renamed from: AS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36662AS = new DigitalInkRecognitionModelIdentifier("as");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AS_GESTURE = new DigitalInkRecognitionModelIdentifier("as-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AWA_DEVA_IN = new DigitalInkRecognitionModelIdentifier("awa-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AWA_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("awa-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AZ_LATN_AZ = new DigitalInkRecognitionModelIdentifier("az-Latn-AZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier AZ_LATN_AZ_GESTURE = new DigitalInkRecognitionModelIdentifier("az-Latn-AZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BAH_LATN_BS = new DigitalInkRecognitionModelIdentifier("bah-Latn-BS");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BAH_LATN_BS_GESTURE = new DigitalInkRecognitionModelIdentifier("bah-Latn-BS-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BAR_LATN_AT = new DigitalInkRecognitionModelIdentifier("bar-Latn-AT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BAR_LATN_AT_GESTURE = new DigitalInkRecognitionModelIdentifier("bar-Latn-AT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BCQ_LATN_ET = new DigitalInkRecognitionModelIdentifier("bcq-Latn-ET");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BCQ_LATN_ET_GESTURE = new DigitalInkRecognitionModelIdentifier("bcq-Latn-ET-x-gesture", true);

    /* renamed from: BE */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36663BE = new DigitalInkRecognitionModelIdentifier("be");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BER_LATN = new DigitalInkRecognitionModelIdentifier("ber-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BER_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ber-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BEW_LATN_ID = new DigitalInkRecognitionModelIdentifier("bew-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BEW_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("bew-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BE_GESTURE = new DigitalInkRecognitionModelIdentifier("be-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BFY_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bfy-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BFY_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bfy-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BFZ_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bfz-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BFZ_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bfz-Deva-IN-x-gesture", true);

    /* renamed from: BG */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36664BG = new DigitalInkRecognitionModelIdentifier("bg");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGC_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bgc-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGC_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bgc-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGQ_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bgq-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGQ_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bgq-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGQ_DEVA_PK = new DigitalInkRecognitionModelIdentifier("bgq-Deva-PK");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGQ_DEVA_PK_GESTURE = new DigitalInkRecognitionModelIdentifier("bgq-Deva-PK-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGX_LATN_TR = new DigitalInkRecognitionModelIdentifier("bgx-Latn-TR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGX_LATN_TR_GESTURE = new DigitalInkRecognitionModelIdentifier("bgx-Latn-TR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGZ_LATN_ID = new DigitalInkRecognitionModelIdentifier("bgz-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BGZ_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("bgz-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BG_GESTURE = new DigitalInkRecognitionModelIdentifier("bg-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BHB_DEVA = new DigitalInkRecognitionModelIdentifier("bhb-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BHB_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("bhb-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BHO_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bho-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BHO_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bho-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BIK_LATN_PH = new DigitalInkRecognitionModelIdentifier("bik-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BIK_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("bik-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BI_LATN_VU = new DigitalInkRecognitionModelIdentifier("bi-Latn-VU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BI_LATN_VU_GESTURE = new DigitalInkRecognitionModelIdentifier("bi-Latn-VU-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BJJ_DEVA_IN = new DigitalInkRecognitionModelIdentifier("bjj-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BJJ_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("bjj-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BJN_LATN_ID = new DigitalInkRecognitionModelIdentifier("bjn-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BJN_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("bjn-Latn-ID-x-gesture", true);

    /* renamed from: BN */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36665BN = new DigitalInkRecognitionModelIdentifier("bn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BN_GESTURE = new DigitalInkRecognitionModelIdentifier("bn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BN_LATN = new DigitalInkRecognitionModelIdentifier("bn-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BN_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("bn-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BOM_LATN_NG = new DigitalInkRecognitionModelIdentifier("bom-Latn-NG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BOM_LATN_NG_GESTURE = new DigitalInkRecognitionModelIdentifier("bom-Latn-NG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BO_TIBT = new DigitalInkRecognitionModelIdentifier("bo-Tibt");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BO_TIBT_GESTURE = new DigitalInkRecognitionModelIdentifier("bo-Tibt-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BRX_DEVA = new DigitalInkRecognitionModelIdentifier("brx-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BRX_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("brx-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BRX_LATN = new DigitalInkRecognitionModelIdentifier("brx-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BRX_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("brx-Latn-x-gesture", true);

    /* renamed from: BS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36666BS = new DigitalInkRecognitionModelIdentifier("bs");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BS_GESTURE = new DigitalInkRecognitionModelIdentifier("bs-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BTO_LATN_PH = new DigitalInkRecognitionModelIdentifier("bto-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BTO_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("bto-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BTZ_LATN_ID = new DigitalInkRecognitionModelIdentifier("btz-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BTZ_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("btz-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BZC_LATN_MG = new DigitalInkRecognitionModelIdentifier("bzc-Latn-MG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier BZC_LATN_MG_GESTURE = new DigitalInkRecognitionModelIdentifier("bzc-Latn-MG-x-gesture", true);

    /* renamed from: CA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36667CA = new DigitalInkRecognitionModelIdentifier(LocalePreferences.CalendarType.f5703a);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CA_GESTURE = new DigitalInkRecognitionModelIdentifier("ca-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CEB_LATN = new DigitalInkRecognitionModelIdentifier("ceb-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CEB_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ceb-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CGG_LATN_UG = new DigitalInkRecognitionModelIdentifier("cgg-Latn-UG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CGG_LATN_UG_GESTURE = new DigitalInkRecognitionModelIdentifier("cgg-Latn-UG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CH_GU = new DigitalInkRecognitionModelIdentifier("ch-GU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CH_GU_GESTURE = new DigitalInkRecognitionModelIdentifier("ch-GU-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CJK_LATN_CD = new DigitalInkRecognitionModelIdentifier("cjk-Latn-CD");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CJK_LATN_CD_GESTURE = new DigitalInkRecognitionModelIdentifier("cjk-Latn-CD-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CO_LATN = new DigitalInkRecognitionModelIdentifier("co-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CO_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("co-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CPS_LATN_PH = new DigitalInkRecognitionModelIdentifier("cps-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CPS_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("cps-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CRS_LATN_SC = new DigitalInkRecognitionModelIdentifier("crs-Latn-SC");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CRS_LATN_SC_GESTURE = new DigitalInkRecognitionModelIdentifier("crs-Latn-SC-x-gesture", true);

    /* renamed from: CS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36668CS = new DigitalInkRecognitionModelIdentifier("cs");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CS_GESTURE = new DigitalInkRecognitionModelIdentifier("cs-x-gesture", true);

    /* renamed from: CY */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36669CY = new DigitalInkRecognitionModelIdentifier("cy");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CYO_LATN_PH = new DigitalInkRecognitionModelIdentifier("cyo-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CYO_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("cyo-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier CY_GESTURE = new DigitalInkRecognitionModelIdentifier("cy-x-gesture", true);

    /* renamed from: DA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36670DA = new DigitalInkRecognitionModelIdentifier("da");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DA_GESTURE = new DigitalInkRecognitionModelIdentifier("da-x-gesture", true);

    /* renamed from: DE */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36671DE = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_GERMAN);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_AT = new DigitalInkRecognitionModelIdentifier("de-AT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_AT_GESTURE = new DigitalInkRecognitionModelIdentifier("de-AT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_BE = new DigitalInkRecognitionModelIdentifier("de-BE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_BE_GESTURE = new DigitalInkRecognitionModelIdentifier("de-BE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_CH = new DigitalInkRecognitionModelIdentifier("de-CH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_CH_GESTURE = new DigitalInkRecognitionModelIdentifier("de-CH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_DE = new DigitalInkRecognitionModelIdentifier("de-DE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_DE_GESTURE = new DigitalInkRecognitionModelIdentifier("de-DE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_GESTURE = new DigitalInkRecognitionModelIdentifier("de-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_LU = new DigitalInkRecognitionModelIdentifier("de-LU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DE_LU_GESTURE = new DigitalInkRecognitionModelIdentifier("de-LU-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DNJ_LATN_CI = new DigitalInkRecognitionModelIdentifier("dnj-Latn-CI");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DNJ_LATN_CI_GESTURE = new DigitalInkRecognitionModelIdentifier("dnj-Latn-CI-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DOI_DEVA = new DigitalInkRecognitionModelIdentifier("doi-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DOI_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("doi-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DOI_LATN = new DigitalInkRecognitionModelIdentifier("doi-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DOI_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("doi-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DRS_LATN_ET = new DigitalInkRecognitionModelIdentifier("drs-Latn-ET");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DRS_LATN_ET_GESTURE = new DigitalInkRecognitionModelIdentifier("drs-Latn-ET-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DRT_LATN_NL = new DigitalInkRecognitionModelIdentifier("drt-Latn-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DRT_LATN_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("drt-Latn-NL-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DSB_DE = new DigitalInkRecognitionModelIdentifier("dsb-DE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier DSB_DE_GESTURE = new DigitalInkRecognitionModelIdentifier("dsb-DE-x-gesture", true);

    /* renamed from: EL */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36672EL = new DigitalInkRecognitionModelIdentifier("el");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EL_GESTURE = new DigitalInkRecognitionModelIdentifier("el-x-gesture", true);

    /* renamed from: EN */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36673EN = new DigitalInkRecognitionModelIdentifier("en");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_AU = new DigitalInkRecognitionModelIdentifier("en-AU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_AU_GESTURE = new DigitalInkRecognitionModelIdentifier("en-AU-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_CA = new DigitalInkRecognitionModelIdentifier("en-CA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_CA_GESTURE = new DigitalInkRecognitionModelIdentifier("en-CA-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_GB = new DigitalInkRecognitionModelIdentifier("en-GB");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_GB_GESTURE = new DigitalInkRecognitionModelIdentifier("en-GB-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_GESTURE = new DigitalInkRecognitionModelIdentifier("en-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_IN = new DigitalInkRecognitionModelIdentifier("en-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("en-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_KE = new DigitalInkRecognitionModelIdentifier("en-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("en-KE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_NG = new DigitalInkRecognitionModelIdentifier("en-NG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_NG_GESTURE = new DigitalInkRecognitionModelIdentifier("en-NG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_PH = new DigitalInkRecognitionModelIdentifier("en-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("en-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_US = new DigitalInkRecognitionModelIdentifier("en-US");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_US_GESTURE = new DigitalInkRecognitionModelIdentifier("en-US-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_ZA = new DigitalInkRecognitionModelIdentifier("en-ZA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EN_ZA_GESTURE = new DigitalInkRecognitionModelIdentifier("en-ZA-x-gesture", true);

    /* renamed from: EO */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36674EO = new DigitalInkRecognitionModelIdentifier("eo");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EO_GESTURE = new DigitalInkRecognitionModelIdentifier("eo-x-gesture", true);

    /* renamed from: ES */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36675ES = new DigitalInkRecognitionModelIdentifier("es");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_AR = new DigitalInkRecognitionModelIdentifier("es-AR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_AR_GESTURE = new DigitalInkRecognitionModelIdentifier("es-AR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_ES = new DigitalInkRecognitionModelIdentifier("es-ES");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_ES_GESTURE = new DigitalInkRecognitionModelIdentifier("es-ES-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_GESTURE = new DigitalInkRecognitionModelIdentifier("es-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_MX = new DigitalInkRecognitionModelIdentifier("es-MX");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_MX_GESTURE = new DigitalInkRecognitionModelIdentifier("es-MX-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_US = new DigitalInkRecognitionModelIdentifier("es-US");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ES_US_GESTURE = new DigitalInkRecognitionModelIdentifier("es-US-x-gesture", true);

    /* renamed from: ET */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36676ET = new DigitalInkRecognitionModelIdentifier("et");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ET_EE = new DigitalInkRecognitionModelIdentifier("et-EE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ET_EE_GESTURE = new DigitalInkRecognitionModelIdentifier("et-EE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ET_GESTURE = new DigitalInkRecognitionModelIdentifier("et-x-gesture", true);

    /* renamed from: EU */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36677EU = new DigitalInkRecognitionModelIdentifier("eu");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EU_ES = new DigitalInkRecognitionModelIdentifier("eu-ES");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EU_ES_GESTURE = new DigitalInkRecognitionModelIdentifier("eu-ES-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EU_GESTURE = new DigitalInkRecognitionModelIdentifier("eu-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EXT_LATN_ES = new DigitalInkRecognitionModelIdentifier("ext-Latn-ES");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier EXT_LATN_ES_GESTURE = new DigitalInkRecognitionModelIdentifier("ext-Latn-ES-x-gesture", true);

    /* renamed from: FA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36678FA = new DigitalInkRecognitionModelIdentifier("fa");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FAN_LATN_GQ = new DigitalInkRecognitionModelIdentifier("fan-Latn-GQ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FAN_LATN_GQ_GESTURE = new DigitalInkRecognitionModelIdentifier("fan-Latn-GQ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FA_GESTURE = new DigitalInkRecognitionModelIdentifier("fa-x-gesture", true);

    /* renamed from: FI */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36679FI = new DigitalInkRecognitionModelIdentifier("fi");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FIL_LATN = new DigitalInkRecognitionModelIdentifier("fil-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FIL_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("fil-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FI_GESTURE = new DigitalInkRecognitionModelIdentifier("fi-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FJ_FJ = new DigitalInkRecognitionModelIdentifier("fj-FJ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FJ_FJ_GESTURE = new DigitalInkRecognitionModelIdentifier("fj-FJ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FO_FO = new DigitalInkRecognitionModelIdentifier("fo-FO");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FO_FO_GESTURE = new DigitalInkRecognitionModelIdentifier("fo-FO-x-gesture", true);

    /* renamed from: FR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36680FR = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_FRENCH);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_002 = new DigitalInkRecognitionModelIdentifier("fr-002");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_002_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-002-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_BE = new DigitalInkRecognitionModelIdentifier("fr-BE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_BE_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-BE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_CA = new DigitalInkRecognitionModelIdentifier("fr-CA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_CA_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-CA-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_CH = new DigitalInkRecognitionModelIdentifier("fr-CH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_CH_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-CH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_FR = new DigitalInkRecognitionModelIdentifier("fr-FR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_FR_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-FR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FR_GESTURE = new DigitalInkRecognitionModelIdentifier("fr-x-gesture", true);

    /* renamed from: FY */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36681FY = new DigitalInkRecognitionModelIdentifier("fy");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier FY_GESTURE = new DigitalInkRecognitionModelIdentifier("fy-x-gesture", true);

    /* renamed from: GA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36682GA = new DigitalInkRecognitionModelIdentifier("ga");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GAX_LATN_ET = new DigitalInkRecognitionModelIdentifier("gax-Latn-ET");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GAX_LATN_ET_GESTURE = new DigitalInkRecognitionModelIdentifier("gax-Latn-ET-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GAY_LATN_ID = new DigitalInkRecognitionModelIdentifier("gay-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GAY_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("gay-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GA_GESTURE = new DigitalInkRecognitionModelIdentifier("ga-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GBM_DEVA_IN = new DigitalInkRecognitionModelIdentifier("gbm-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GBM_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("gbm-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GCR_LATN_GF = new DigitalInkRecognitionModelIdentifier("gcr-Latn-GF");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GCR_LATN_GF_GESTURE = new DigitalInkRecognitionModelIdentifier("gcr-Latn-GF-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GDX_DEVA_IN = new DigitalInkRecognitionModelIdentifier("gdx-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GDX_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("gdx-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GD_LATN = new DigitalInkRecognitionModelIdentifier("gd-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GD_LATN_GB = new DigitalInkRecognitionModelIdentifier("gd-Latn-GB");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GD_LATN_GB_GESTURE = new DigitalInkRecognitionModelIdentifier("gd-Latn-GB-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GD_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("gd-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GJU_DEVA = new DigitalInkRecognitionModelIdentifier("gju-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GJU_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("gju-Deva-x-gesture", true);

    /* renamed from: GL */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36683GL = new DigitalInkRecognitionModelIdentifier("gl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GL_ES = new DigitalInkRecognitionModelIdentifier("gl-ES");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GL_ES_GESTURE = new DigitalInkRecognitionModelIdentifier("gl-ES-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GL_GESTURE = new DigitalInkRecognitionModelIdentifier("gl-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GOS_LATN_NL = new DigitalInkRecognitionModelIdentifier("gos-Latn-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GOS_LATN_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("gos-Latn-NL-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GPE_LATN_GH = new DigitalInkRecognitionModelIdentifier("gpe-Latn-GH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GPE_LATN_GH_GESTURE = new DigitalInkRecognitionModelIdentifier("gpe-Latn-GH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GSW_CH = new DigitalInkRecognitionModelIdentifier("gsw-CH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GSW_CH_GESTURE = new DigitalInkRecognitionModelIdentifier("gsw-CH-x-gesture", true);

    /* renamed from: GU */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36684GU = new DigitalInkRecognitionModelIdentifier("gu");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GU_GESTURE = new DigitalInkRecognitionModelIdentifier("gu-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GU_LATN = new DigitalInkRecognitionModelIdentifier("gu-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GU_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("gu-Latn-x-gesture", true);

    /* renamed from: GV */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36685GV = new DigitalInkRecognitionModelIdentifier("gv");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GV_GESTURE = new DigitalInkRecognitionModelIdentifier("gv-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GYN_LATN = new DigitalInkRecognitionModelIdentifier("gyn-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier GYN_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("gyn-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HAQ_LATN_TZ = new DigitalInkRecognitionModelIdentifier("haq-Latn-TZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HAQ_LATN_TZ_GESTURE = new DigitalInkRecognitionModelIdentifier("haq-Latn-TZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HAW_LATN = new DigitalInkRecognitionModelIdentifier("haw-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HAW_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("haw-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HDY_LATN = new DigitalInkRecognitionModelIdentifier("hdy-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HDY_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("hdy-Latn-x-gesture", true);

    /* renamed from: HE */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36686HE = new DigitalInkRecognitionModelIdentifier("he");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HE_GESTURE = new DigitalInkRecognitionModelIdentifier("he-x-gesture", true);

    /* renamed from: HI */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36687HI = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_INDIAN);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HIF_DEVA = new DigitalInkRecognitionModelIdentifier("hif-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HIF_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("hif-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HIL_LATN_PH = new DigitalInkRecognitionModelIdentifier("hil-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HIL_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("hil-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HI_GESTURE = new DigitalInkRecognitionModelIdentifier("hi-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HI_LATN = new DigitalInkRecognitionModelIdentifier("hi-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HI_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("hi-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HMN_LATN = new DigitalInkRecognitionModelIdentifier("hmn-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HMN_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("hmn-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HNE_DEVA_IN = new DigitalInkRecognitionModelIdentifier("hne-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HNE_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("hne-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HNI_LATN_CN = new DigitalInkRecognitionModelIdentifier("hni-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HNI_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("hni-Latn-CN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HOJ_DEVA_IN = new DigitalInkRecognitionModelIdentifier("hoj-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HOJ_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("hoj-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HO_LATN_PG = new DigitalInkRecognitionModelIdentifier("ho-Latn-PG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HO_LATN_PG_GESTURE = new DigitalInkRecognitionModelIdentifier("ho-Latn-PG-x-gesture", true);

    /* renamed from: HR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36688HR = new DigitalInkRecognitionModelIdentifier("hr");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HRX_LATN_BR = new DigitalInkRecognitionModelIdentifier("hrx-Latn-BR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HRX_LATN_BR_GESTURE = new DigitalInkRecognitionModelIdentifier("hrx-Latn-BR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HR_GESTURE = new DigitalInkRecognitionModelIdentifier("hr-x-gesture", true);

    /* renamed from: HT */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36689HT = new DigitalInkRecognitionModelIdentifier("ht");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HT_GESTURE = new DigitalInkRecognitionModelIdentifier("ht-x-gesture", true);

    /* renamed from: HU */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36690HU = new DigitalInkRecognitionModelIdentifier("hu");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HU_GESTURE = new DigitalInkRecognitionModelIdentifier("hu-x-gesture", true);

    /* renamed from: HY */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36691HY = new DigitalInkRecognitionModelIdentifier("hy");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier HY_GESTURE = new DigitalInkRecognitionModelIdentifier("hy-x-gesture", true);

    /* renamed from: ID */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36692ID = new DigitalInkRecognitionModelIdentifier("id");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ID_GESTURE = new DigitalInkRecognitionModelIdentifier("id-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IGB_LATN_NG = new DigitalInkRecognitionModelIdentifier("igb-Latn-NG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IGB_LATN_NG_GESTURE = new DigitalInkRecognitionModelIdentifier("igb-Latn-NG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier II_LATN = new DigitalInkRecognitionModelIdentifier("ii-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier II_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ii-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ILO_LATN_PH = new DigitalInkRecognitionModelIdentifier("ilo-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ILO_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("ilo-Latn-PH-x-gesture", true);

    /* renamed from: IS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36693IS = new DigitalInkRecognitionModelIdentifier("is");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IS_GESTURE = new DigitalInkRecognitionModelIdentifier("is-x-gesture", true);

    /* renamed from: IT */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36694IT = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_ITALIAN);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IT_CH = new DigitalInkRecognitionModelIdentifier("it-CH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IT_CH_GESTURE = new DigitalInkRecognitionModelIdentifier("it-CH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IT_GESTURE = new DigitalInkRecognitionModelIdentifier("it-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IT_IT = new DigitalInkRecognitionModelIdentifier("it-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IT_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("it-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IUM_LATN_CN = new DigitalInkRecognitionModelIdentifier("ium-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier IUM_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("ium-Latn-CN-x-gesture", true);

    /* renamed from: JA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36695JA = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_JAPANESE);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JAM_LATN_JM = new DigitalInkRecognitionModelIdentifier("jam-Latn-JM");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JAM_LATN_JM_GESTURE = new DigitalInkRecognitionModelIdentifier("jam-Latn-JM-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JAX_LATN_ID = new DigitalInkRecognitionModelIdentifier("jax-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JAX_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("jax-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JA_GESTURE = new DigitalInkRecognitionModelIdentifier("ja-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JBO_LATN = new DigitalInkRecognitionModelIdentifier("jbo-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JBO_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("jbo-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JV_LATN = new DigitalInkRecognitionModelIdentifier("jv-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier JV_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("jv-Latn-x-gesture", true);

    /* renamed from: KA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36696KA = new DigitalInkRecognitionModelIdentifier("ka");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KA_GESTURE = new DigitalInkRecognitionModelIdentifier("ka-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KDE_LATN_TZ = new DigitalInkRecognitionModelIdentifier("kde-Latn-TZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KDE_LATN_TZ_GESTURE = new DigitalInkRecognitionModelIdentifier("kde-Latn-TZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KFR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("kfr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KFR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("kfr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KFY_DEVA_IN = new DigitalInkRecognitionModelIdentifier("kfy-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KFY_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("kfy-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KGE_LATN_ID = new DigitalInkRecognitionModelIdentifier("kge-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KGE_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("kge-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KHA_LATN_IN = new DigitalInkRecognitionModelIdentifier("kha-Latn-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KHA_LATN_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("kha-Latn-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KJ_LATN = new DigitalInkRecognitionModelIdentifier("kj-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KJ_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("kj-Latn-x-gesture", true);

    /* renamed from: KK */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36697KK = new DigitalInkRecognitionModelIdentifier("kk");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KK_GESTURE = new DigitalInkRecognitionModelIdentifier("kk-x-gesture", true);

    /* renamed from: KL */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36698KL = new DigitalInkRecognitionModelIdentifier("kl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KL_GESTURE = new DigitalInkRecognitionModelIdentifier("kl-x-gesture", true);

    /* renamed from: KM */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36699KM = new DigitalInkRecognitionModelIdentifier("km");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KMB_LATN_AO = new DigitalInkRecognitionModelIdentifier("kmb-Latn-AO");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KMB_LATN_AO_GESTURE = new DigitalInkRecognitionModelIdentifier("kmb-Latn-AO-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KMZ_LATN = new DigitalInkRecognitionModelIdentifier("kmz-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KMZ_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("kmz-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KM_GESTURE = new DigitalInkRecognitionModelIdentifier("km-x-gesture", true);

    /* renamed from: KN */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36700KN = new DigitalInkRecognitionModelIdentifier("kn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KN_GESTURE = new DigitalInkRecognitionModelIdentifier("kn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KN_LATN = new DigitalInkRecognitionModelIdentifier("kn-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KN_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("kn-Latn-x-gesture", true);

    /* renamed from: KO */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36701KO = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_KOREAN);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK = new DigitalInkRecognitionModelIdentifier("kok");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK_GESTURE = new DigitalInkRecognitionModelIdentifier("kok-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK_IN = new DigitalInkRecognitionModelIdentifier("kok-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("kok-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK_LATN = new DigitalInkRecognitionModelIdentifier("kok-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KOK_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("kok-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KO_GESTURE = new DigitalInkRecognitionModelIdentifier("ko-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KRU_DEVA_IN = new DigitalInkRecognitionModelIdentifier("kru-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KRU_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("kru-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KSH_LATN_DE = new DigitalInkRecognitionModelIdentifier("ksh-Latn-DE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KSH_LATN_DE_GESTURE = new DigitalInkRecognitionModelIdentifier("ksh-Latn-DE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KS_DEVA = new DigitalInkRecognitionModelIdentifier("ks-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KS_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("ks-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KS_LATN = new DigitalInkRecognitionModelIdentifier("ks-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KS_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ks-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KTB_LATN = new DigitalInkRecognitionModelIdentifier("ktb-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KTB_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ktb-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KTU_LATN_CD = new DigitalInkRecognitionModelIdentifier("ktu-Latn-CD");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KTU_LATN_CD_GESTURE = new DigitalInkRecognitionModelIdentifier("ktu-Latn-CD-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KU_LATN = new DigitalInkRecognitionModelIdentifier("ku-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KU_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ku-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KW_LATN_GB = new DigitalInkRecognitionModelIdentifier("kw-Latn-GB");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KW_LATN_GB_GESTURE = new DigitalInkRecognitionModelIdentifier("kw-Latn-GB-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KY_CYRL = new DigitalInkRecognitionModelIdentifier("ky-Cyrl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier KY_CYRL_GESTURE = new DigitalInkRecognitionModelIdentifier("ky-Cyrl-x-gesture", true);

    /* renamed from: LA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36702LA = new DigitalInkRecognitionModelIdentifier("la");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LAD_LATN_BA = new DigitalInkRecognitionModelIdentifier("lad-Latn-BA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LAD_LATN_BA_GESTURE = new DigitalInkRecognitionModelIdentifier("lad-Latn-BA-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LAJ_LATN_UG = new DigitalInkRecognitionModelIdentifier("laj-Latn-UG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LAJ_LATN_UG_GESTURE = new DigitalInkRecognitionModelIdentifier("laj-Latn-UG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LA_GESTURE = new DigitalInkRecognitionModelIdentifier("la-x-gesture", true);

    /* renamed from: LB */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36703LB = new DigitalInkRecognitionModelIdentifier("lb");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LB_GESTURE = new DigitalInkRecognitionModelIdentifier("lb-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LED_LATN_CD = new DigitalInkRecognitionModelIdentifier("led-Latn-CD");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LED_LATN_CD_GESTURE = new DigitalInkRecognitionModelIdentifier("led-Latn-CD-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LLD_LATN_IT = new DigitalInkRecognitionModelIdentifier("lld-Latn-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LLD_LATN_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("lld-Latn-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LMN_DEVA = new DigitalInkRecognitionModelIdentifier("lmn-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LMN_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("lmn-Deva-x-gesture", true);

    /* renamed from: LO */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36704LO = new DigitalInkRecognitionModelIdentifier("lo");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LON_LATN_MW = new DigitalInkRecognitionModelIdentifier("lon-Latn-MW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LON_LATN_MW_GESTURE = new DigitalInkRecognitionModelIdentifier("lon-Latn-MW-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LO_GESTURE = new DigitalInkRecognitionModelIdentifier("lo-x-gesture", true);

    /* renamed from: LT */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36705LT = new DigitalInkRecognitionModelIdentifier(WebvttCueParser.f27233m);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LT_GESTURE = new DigitalInkRecognitionModelIdentifier("lt-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LUY_LATN_KE = new DigitalInkRecognitionModelIdentifier("luy-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LUY_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("luy-Latn-KE-x-gesture", true);

    /* renamed from: LV */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36706LV = new DigitalInkRecognitionModelIdentifier("lv");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier LV_GESTURE = new DigitalInkRecognitionModelIdentifier("lv-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAD_LATN_ID = new DigitalInkRecognitionModelIdentifier("mad-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAD_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("mad-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAG_DEVA_IN = new DigitalInkRecognitionModelIdentifier("mag-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAG_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mag-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAI_IN = new DigitalInkRecognitionModelIdentifier("mai-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAI_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mai-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAI_LATN = new DigitalInkRecognitionModelIdentifier("mai-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAI_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("mai-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAS_LATN_KE = new DigitalInkRecognitionModelIdentifier("mas-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAS_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("mas-Latn-KE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAX_LATN_ID = new DigitalInkRecognitionModelIdentifier("max-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MAX_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("max-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MDH_LATN_PH = new DigitalInkRecognitionModelIdentifier("mdh-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MDH_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("mdh-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MEL_LATN_MY = new DigitalInkRecognitionModelIdentifier("mel-Latn-MY");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MEL_LATN_MY_GESTURE = new DigitalInkRecognitionModelIdentifier("mel-Latn-MY-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MEO_LATN_MY = new DigitalInkRecognitionModelIdentifier("meo-Latn-MY");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MEO_LATN_MY_GESTURE = new DigitalInkRecognitionModelIdentifier("meo-Latn-MY-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MFB_LATN_ID = new DigitalInkRecognitionModelIdentifier("mfb-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MFB_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("mfb-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MFP_LATN_ID = new DigitalInkRecognitionModelIdentifier("mfp-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MFP_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("mfp-Latn-ID-x-gesture", true);

    /* renamed from: MG */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36707MG = new DigitalInkRecognitionModelIdentifier("mg");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MG_GESTURE = new DigitalInkRecognitionModelIdentifier("mg-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MIN_LATN_ID = new DigitalInkRecognitionModelIdentifier("min-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MIN_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("min-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MI_LATN = new DigitalInkRecognitionModelIdentifier("mi-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MI_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("mi-Latn-x-gesture", true);

    /* renamed from: MK */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36708MK = new DigitalInkRecognitionModelIdentifier("mk");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MK_GESTURE = new DigitalInkRecognitionModelIdentifier("mk-x-gesture", true);

    /* renamed from: ML */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36709ML = new DigitalInkRecognitionModelIdentifier("ml");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ML_GESTURE = new DigitalInkRecognitionModelIdentifier("ml-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ML_LATN = new DigitalInkRecognitionModelIdentifier("ml-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ML_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ml-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MNI_LATN = new DigitalInkRecognitionModelIdentifier("mni-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MNI_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("mni-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MN_CYRL = new DigitalInkRecognitionModelIdentifier("mn-Cyrl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MN_CYRL_GESTURE = new DigitalInkRecognitionModelIdentifier("mn-Cyrl-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MQY_LATN_ID = new DigitalInkRecognitionModelIdentifier("mqy-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MQY_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("mqy-Latn-ID-x-gesture", true);

    /* renamed from: MR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36710MR = new DigitalInkRecognitionModelIdentifier("mr");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MRW_LATN_PH = new DigitalInkRecognitionModelIdentifier("mrw-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MRW_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("mrw-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MR_GESTURE = new DigitalInkRecognitionModelIdentifier("mr-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MR_IN = new DigitalInkRecognitionModelIdentifier("mr-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MR_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mr-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MR_LATN = new DigitalInkRecognitionModelIdentifier("mr-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MR_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("mr-Latn-x-gesture", true);

    /* renamed from: MS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36711MS = new DigitalInkRecognitionModelIdentifier(HttpMeasureConstants.f94668b);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MSI_LATN_MY = new DigitalInkRecognitionModelIdentifier("msi-Latn-MY");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MSI_LATN_MY_GESTURE = new DigitalInkRecognitionModelIdentifier("msi-Latn-MY-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MS_BN = new DigitalInkRecognitionModelIdentifier("ms-BN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MS_BN_GESTURE = new DigitalInkRecognitionModelIdentifier("ms-BN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MS_GESTURE = new DigitalInkRecognitionModelIdentifier("ms-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MS_MY = new DigitalInkRecognitionModelIdentifier("ms-MY");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MS_MY_GESTURE = new DigitalInkRecognitionModelIdentifier("ms-MY-x-gesture", true);

    /* renamed from: MT */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36712MT = new DigitalInkRecognitionModelIdentifier("mt");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MTR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("mtr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MTR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mtr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MT_GESTURE = new DigitalInkRecognitionModelIdentifier("mt-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MUI_LATN_ID = new DigitalInkRecognitionModelIdentifier("mui-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MUI_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("mui-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MUP_DEVA_IN = new DigitalInkRecognitionModelIdentifier("mup-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MUP_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mup-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MVE_DEVA_PK = new DigitalInkRecognitionModelIdentifier("mve-Deva-PK");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MVE_DEVA_PK_GESTURE = new DigitalInkRecognitionModelIdentifier("mve-Deva-PK-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MWR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("mwr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MWR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("mwr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MWW_LATN_CN = new DigitalInkRecognitionModelIdentifier("mww-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MWW_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("mww-Latn-CN-x-gesture", true);

    /* renamed from: MY */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36713MY = new DigitalInkRecognitionModelIdentifier("my");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MYX_LATN_UG = new DigitalInkRecognitionModelIdentifier("myx-Latn-UG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MYX_LATN_UG_GESTURE = new DigitalInkRecognitionModelIdentifier("myx-Latn-UG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier MY_GESTURE = new DigitalInkRecognitionModelIdentifier("my-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NAH_LATN = new DigitalInkRecognitionModelIdentifier("nah-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NAH_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("nah-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NAP_LATN_IT = new DigitalInkRecognitionModelIdentifier("nap-Latn-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NAP_LATN_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("nap-Latn-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NDC_LATN_ZW = new DigitalInkRecognitionModelIdentifier("ndc-Latn-ZW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NDC_LATN_ZW_GESTURE = new DigitalInkRecognitionModelIdentifier("ndc-Latn-ZW-x-gesture", true);

    /* renamed from: NE */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36714NE = new DigitalInkRecognitionModelIdentifier("ne");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NEW_DEVA_NP = new DigitalInkRecognitionModelIdentifier("new-Deva-NP");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NEW_DEVA_NP_GESTURE = new DigitalInkRecognitionModelIdentifier("new-Deva-NP-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_GESTURE = new DigitalInkRecognitionModelIdentifier("ne-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_IN = new DigitalInkRecognitionModelIdentifier("ne-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("ne-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_LATN = new DigitalInkRecognitionModelIdentifier("ne-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ne-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_NP = new DigitalInkRecognitionModelIdentifier("ne-NP");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NE_NP_GESTURE = new DigitalInkRecognitionModelIdentifier("ne-NP-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NGA_LATN_CD = new DigitalInkRecognitionModelIdentifier("nga-Latn-CD");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NGA_LATN_CD_GESTURE = new DigitalInkRecognitionModelIdentifier("nga-Latn-CD-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NG_LATN_NA = new DigitalInkRecognitionModelIdentifier("ng-Latn-NA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NG_LATN_NA_GESTURE = new DigitalInkRecognitionModelIdentifier("ng-Latn-NA-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NIQ_LATN_KE = new DigitalInkRecognitionModelIdentifier("niq-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NIQ_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("niq-Latn-KE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NL_BE = new DigitalInkRecognitionModelIdentifier("nl-BE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NL_BE_GESTURE = new DigitalInkRecognitionModelIdentifier("nl-BE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NL_NL = new DigitalInkRecognitionModelIdentifier("nl-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NL_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("nl-NL-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NN_NO = new DigitalInkRecognitionModelIdentifier("nn-NO");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NN_NO_GESTURE = new DigitalInkRecognitionModelIdentifier("nn-NO-x-gesture", true);

    /* renamed from: NO */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36715NO = new DigitalInkRecognitionModelIdentifier(SVGParser.f16048t);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NOE_DEVA_IN = new DigitalInkRecognitionModelIdentifier("noe-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NOE_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("noe-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NO_GESTURE = new DigitalInkRecognitionModelIdentifier("no-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NR_ZA = new DigitalInkRecognitionModelIdentifier("nr-ZA");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NR_ZA_GESTURE = new DigitalInkRecognitionModelIdentifier("nr-ZA-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NSO = new DigitalInkRecognitionModelIdentifier("nso");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NSO_GESTURE = new DigitalInkRecognitionModelIdentifier("nso-x-gesture", true);

    /* renamed from: NY */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36716NY = new DigitalInkRecognitionModelIdentifier("ny");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NYM_LATN_TZ = new DigitalInkRecognitionModelIdentifier("nym-Latn-TZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NYM_LATN_TZ_GESTURE = new DigitalInkRecognitionModelIdentifier("nym-Latn-TZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NYO_LATN_UG = new DigitalInkRecognitionModelIdentifier("nyo-Latn-UG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NYO_LATN_UG_GESTURE = new DigitalInkRecognitionModelIdentifier("nyo-Latn-UG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier NY_GESTURE = new DigitalInkRecognitionModelIdentifier("ny-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OC_LATN_FR = new DigitalInkRecognitionModelIdentifier("oc-Latn-FR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OC_LATN_FR_GESTURE = new DigitalInkRecognitionModelIdentifier("oc-Latn-FR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OJ_LATN = new DigitalInkRecognitionModelIdentifier("oj-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OJ_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("oj-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OLO_LATN_RU = new DigitalInkRecognitionModelIdentifier("olo-Latn-RU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OLO_LATN_RU_GESTURE = new DigitalInkRecognitionModelIdentifier("olo-Latn-RU-x-gesture", true);

    /* renamed from: OM */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36717OM = new DigitalInkRecognitionModelIdentifier("om");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OM_GESTURE = new DigitalInkRecognitionModelIdentifier("om-x-gesture", true);

    /* renamed from: OR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36718OR = new DigitalInkRecognitionModelIdentifier(Operators.OR);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OR_GESTURE = new DigitalInkRecognitionModelIdentifier("or-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OR_LATN = new DigitalInkRecognitionModelIdentifier("or-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier OR_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("or-Latn-x-gesture", true);

    /* renamed from: PA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36719PA = new DigitalInkRecognitionModelIdentifier("pa");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAG_LATN_PH = new DigitalInkRecognitionModelIdentifier("pag-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAG_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("pag-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAM_LATN_PH = new DigitalInkRecognitionModelIdentifier("pam-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAM_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("pam-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAP_LATN = new DigitalInkRecognitionModelIdentifier("pap-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PAP_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("pap-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PA_GESTURE = new DigitalInkRecognitionModelIdentifier("pa-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PA_LATN = new DigitalInkRecognitionModelIdentifier("pa-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PA_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("pa-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCC_LATN_CN = new DigitalInkRecognitionModelIdentifier("pcc-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCC_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("pcc-Latn-CN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCD_LATN_BE = new DigitalInkRecognitionModelIdentifier("pcd-Latn-BE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCD_LATN_BE_GESTURE = new DigitalInkRecognitionModelIdentifier("pcd-Latn-BE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCM_LATN_NG = new DigitalInkRecognitionModelIdentifier("pcm-Latn-NG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PCM_LATN_NG_GESTURE = new DigitalInkRecognitionModelIdentifier("pcm-Latn-NG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PKO_LATN_KE = new DigitalInkRecognitionModelIdentifier("pko-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PKO_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("pko-Latn-KE-x-gesture", true);

    /* renamed from: PL */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36720PL = new DigitalInkRecognitionModelIdentifier("pl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PL_GESTURE = new DigitalInkRecognitionModelIdentifier("pl-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PMS_LATN_IT = new DigitalInkRecognitionModelIdentifier("pms-Latn-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PMS_LATN_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("pms-Latn-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PMY_LATN_ID = new DigitalInkRecognitionModelIdentifier("pmy-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PMY_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("pmy-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier POV_LATN_GW = new DigitalInkRecognitionModelIdentifier("pov-Latn-GW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier POV_LATN_GW_GESTURE = new DigitalInkRecognitionModelIdentifier("pov-Latn-GW-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PRK_LATN_MM = new DigitalInkRecognitionModelIdentifier("prk-Latn-MM");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PRK_LATN_MM_GESTURE = new DigitalInkRecognitionModelIdentifier("prk-Latn-MM-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PSE_LATN_ID = new DigitalInkRecognitionModelIdentifier("pse-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PSE_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("pse-Latn-ID-x-gesture", true);

    /* renamed from: PT */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36721PT = new DigitalInkRecognitionModelIdentifier(ExtUnits.UNIT_PT);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_002 = new DigitalInkRecognitionModelIdentifier("pt-002");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_002_GESTURE = new DigitalInkRecognitionModelIdentifier("pt-002-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_BR = new DigitalInkRecognitionModelIdentifier("pt-BR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_BR_GESTURE = new DigitalInkRecognitionModelIdentifier("pt-BR-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_GESTURE = new DigitalInkRecognitionModelIdentifier("pt-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_PT = new DigitalInkRecognitionModelIdentifier("pt-PT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier PT_PT_GESTURE = new DigitalInkRecognitionModelIdentifier("pt-PT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier QUC_LATN = new DigitalInkRecognitionModelIdentifier("quc-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier QUC_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("quc-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier QU_PE = new DigitalInkRecognitionModelIdentifier("qu-PE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier QU_PE_GESTURE = new DigitalInkRecognitionModelIdentifier("qu-PE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RCF_LATN_RE = new DigitalInkRecognitionModelIdentifier("rcf-Latn-RE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RCF_LATN_RE_GESTURE = new DigitalInkRecognitionModelIdentifier("rcf-Latn-RE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RKT_DEVA_IN = new DigitalInkRecognitionModelIdentifier("rkt-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RKT_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("rkt-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RM_CH = new DigitalInkRecognitionModelIdentifier("rm-CH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RM_CH_GESTURE = new DigitalInkRecognitionModelIdentifier("rm-CH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RN_BI = new DigitalInkRecognitionModelIdentifier("rn-BI");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RN_BI_GESTURE = new DigitalInkRecognitionModelIdentifier("rn-BI-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RO_RO = new DigitalInkRecognitionModelIdentifier("ro-RO");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RO_RO_GESTURE = new DigitalInkRecognitionModelIdentifier("ro-RO-x-gesture", true);

    /* renamed from: RU */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36722RU = new DigitalInkRecognitionModelIdentifier(OcrValues.LANG_RUSSIAN);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RU_GESTURE = new DigitalInkRecognitionModelIdentifier("ru-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RWR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("rwr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier RWR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("rwr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SAT_DEVA = new DigitalInkRecognitionModelIdentifier("sat-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SAT_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("sat-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SAT_LATN = new DigitalInkRecognitionModelIdentifier("sat-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SAT_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("sat-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SA_DEVA_IN = new DigitalInkRecognitionModelIdentifier("sa-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SA_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("sa-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SA_LATN = new DigitalInkRecognitionModelIdentifier("sa-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SA_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("sa-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SCK_DEVA_IN = new DigitalInkRecognitionModelIdentifier("sck-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SCK_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("sck-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SCO_LATN_GB = new DigitalInkRecognitionModelIdentifier("sco-Latn-GB");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SCO_LATN_GB_GESTURE = new DigitalInkRecognitionModelIdentifier("sco-Latn-GB-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SC_LATN_IT = new DigitalInkRecognitionModelIdentifier("sc-Latn-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SC_LATN_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("sc-Latn-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SDC_LATN_IT = new DigitalInkRecognitionModelIdentifier("sdc-Latn-IT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SDC_LATN_IT_GESTURE = new DigitalInkRecognitionModelIdentifier("sdc-Latn-IT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SD_DEVA = new DigitalInkRecognitionModelIdentifier("sd-Deva");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SD_DEVA_GESTURE = new DigitalInkRecognitionModelIdentifier("sd-Deva-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SD_LATN = new DigitalInkRecognitionModelIdentifier("sd-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SD_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("sd-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGC_LATN_KE = new DigitalInkRecognitionModelIdentifier("sgc-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGC_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("sgc-Latn-KE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGJ_DEVA_IN = new DigitalInkRecognitionModelIdentifier("sgj-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGJ_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("sgj-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGS_LATN_LT = new DigitalInkRecognitionModelIdentifier("sgs-Latn-LT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SGS_LATN_LT_GESTURE = new DigitalInkRecognitionModelIdentifier("sgs-Latn-LT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SG_CF = new DigitalInkRecognitionModelIdentifier("sg-CF");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SG_CF_GESTURE = new DigitalInkRecognitionModelIdentifier("sg-CF-x-gesture", true);

    /* renamed from: SI */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36723SI = new DigitalInkRecognitionModelIdentifier("si");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SI_GESTURE = new DigitalInkRecognitionModelIdentifier("si-x-gesture", true);

    /* renamed from: SK */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36724SK = new DigitalInkRecognitionModelIdentifier("sk");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SKG_LATN_MG = new DigitalInkRecognitionModelIdentifier("skg-Latn-MG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SKG_LATN_MG_GESTURE = new DigitalInkRecognitionModelIdentifier("skg-Latn-MG-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SK_GESTURE = new DigitalInkRecognitionModelIdentifier("sk-x-gesture", true);

    /* renamed from: SL */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36725SL = new DigitalInkRecognitionModelIdentifier("sl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SL_GESTURE = new DigitalInkRecognitionModelIdentifier("sl-x-gesture", true);

    /* renamed from: SM */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36726SM = new DigitalInkRecognitionModelIdentifier("sm");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SM_GESTURE = new DigitalInkRecognitionModelIdentifier("sm-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SN_LATN = new DigitalInkRecognitionModelIdentifier("sn-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SN_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("sn-Latn-x-gesture", true);

    /* renamed from: SO */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36727SO = new DigitalInkRecognitionModelIdentifier("so");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SO_GESTURE = new DigitalInkRecognitionModelIdentifier("so-x-gesture", true);

    /* renamed from: SQ */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36728SQ = new DigitalInkRecognitionModelIdentifier("sq");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SQ_GESTURE = new DigitalInkRecognitionModelIdentifier("sq-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SR_CYRL = new DigitalInkRecognitionModelIdentifier("sr-Cyrl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SR_CYRL_GESTURE = new DigitalInkRecognitionModelIdentifier("sr-Cyrl-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SR_LATN_RS = new DigitalInkRecognitionModelIdentifier("sr-Latn-RS");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SR_LATN_RS_GESTURE = new DigitalInkRecognitionModelIdentifier("sr-Latn-RS-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SS_SZ = new DigitalInkRecognitionModelIdentifier("ss-SZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SS_SZ_GESTURE = new DigitalInkRecognitionModelIdentifier("ss-SZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier STV_LATN = new DigitalInkRecognitionModelIdentifier("stv-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier STV_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("stv-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SUK_LATN_TZ = new DigitalInkRecognitionModelIdentifier("suk-Latn-TZ");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SUK_LATN_TZ_GESTURE = new DigitalInkRecognitionModelIdentifier("suk-Latn-TZ-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SU_LATN = new DigitalInkRecognitionModelIdentifier("su-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SU_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("su-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SV_FI = new DigitalInkRecognitionModelIdentifier("sv-FI");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SV_FI_GESTURE = new DigitalInkRecognitionModelIdentifier("sv-FI-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SV_SE = new DigitalInkRecognitionModelIdentifier("sv-SE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SV_SE_GESTURE = new DigitalInkRecognitionModelIdentifier("sv-SE-x-gesture", true);

    /* renamed from: SW */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36729SW = new DigitalInkRecognitionModelIdentifier("sw");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SWV_DEVA_IN = new DigitalInkRecognitionModelIdentifier("swv-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SWV_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("swv-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SW_GESTURE = new DigitalInkRecognitionModelIdentifier("sw-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SXU_LATN_DE = new DigitalInkRecognitionModelIdentifier("sxu-Latn-DE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SXU_LATN_DE_GESTURE = new DigitalInkRecognitionModelIdentifier("sxu-Latn-DE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SYL_LATN = new DigitalInkRecognitionModelIdentifier("syl-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier SYL_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("syl-Latn-x-gesture", true);

    /* renamed from: TA */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36730TA = new DigitalInkRecognitionModelIdentifier("ta");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TA_GESTURE = new DigitalInkRecognitionModelIdentifier("ta-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TA_LATN = new DigitalInkRecognitionModelIdentifier("ta-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TA_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ta-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TDX_LATN_MG = new DigitalInkRecognitionModelIdentifier("tdx-Latn-MG");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TDX_LATN_MG_GESTURE = new DigitalInkRecognitionModelIdentifier("tdx-Latn-MG-x-gesture", true);

    /* renamed from: TE */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36731TE = new DigitalInkRecognitionModelIdentifier(Http2ExchangeCodec.f103782l);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TET_LATN_TL = new DigitalInkRecognitionModelIdentifier("tet-Latn-TL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TET_LATN_TL_GESTURE = new DigitalInkRecognitionModelIdentifier("tet-Latn-TL-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TE_GESTURE = new DigitalInkRecognitionModelIdentifier("te-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TE_LATN = new DigitalInkRecognitionModelIdentifier("te-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TE_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("te-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TG_CYRL = new DigitalInkRecognitionModelIdentifier("tg-Cyrl");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TG_CYRL_GESTURE = new DigitalInkRecognitionModelIdentifier("tg-Cyrl-x-gesture", true);

    /* renamed from: TH */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36732TH = new DigitalInkRecognitionModelIdentifier("th");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TH_GESTURE = new DigitalInkRecognitionModelIdentifier("th-x-gesture", true);

    /* renamed from: TI */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36733TI = new DigitalInkRecognitionModelIdentifier("ti");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TI_GESTURE = new DigitalInkRecognitionModelIdentifier("ti-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TK_LATN = new DigitalInkRecognitionModelIdentifier("tk-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TK_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("tk-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TN_BW = new DigitalInkRecognitionModelIdentifier("tn-BW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TN_BW_GESTURE = new DigitalInkRecognitionModelIdentifier("tn-BW-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TPI = new DigitalInkRecognitionModelIdentifier("tpi");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TPI_GESTURE = new DigitalInkRecognitionModelIdentifier("tpi-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TRF_LATN_TT = new DigitalInkRecognitionModelIdentifier("trf-Latn-TT");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TRF_LATN_TT_GESTURE = new DigitalInkRecognitionModelIdentifier("trf-Latn-TT-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TRP_LATN = new DigitalInkRecognitionModelIdentifier("trp-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TRP_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("trp-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TR_TR = new DigitalInkRecognitionModelIdentifier("tr-TR");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TR_TR_GESTURE = new DigitalInkRecognitionModelIdentifier("tr-TR-x-gesture", true);

    /* renamed from: TS */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36734TS = new DigitalInkRecognitionModelIdentifier("ts");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TSG_LATN_PH = new DigitalInkRecognitionModelIdentifier("tsg-Latn-PH");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TSG_LATN_PH_GESTURE = new DigitalInkRecognitionModelIdentifier("tsg-Latn-PH-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TS_GESTURE = new DigitalInkRecognitionModelIdentifier("ts-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TUM_LATN_MW = new DigitalInkRecognitionModelIdentifier("tum-Latn-MW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TUM_LATN_MW_GESTURE = new DigitalInkRecognitionModelIdentifier("tum-Latn-MW-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TUV_LATN_KE = new DigitalInkRecognitionModelIdentifier("tuv-Latn-KE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TUV_LATN_KE_GESTURE = new DigitalInkRecognitionModelIdentifier("tuv-Latn-KE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TWD_LATN_NL = new DigitalInkRecognitionModelIdentifier("twd-Latn-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier TWD_LATN_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("twd-Latn-NL-x-gesture", true);

    /* renamed from: UK */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36735UK = new DigitalInkRecognitionModelIdentifier("uk");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UK_GESTURE = new DigitalInkRecognitionModelIdentifier("uk-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UNR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("unr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UNR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("unr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UNR_LATN = new DigitalInkRecognitionModelIdentifier("unr-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UNR_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("unr-Latn-x-gesture", true);

    /* renamed from: UR */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36736UR = new DigitalInkRecognitionModelIdentifier("ur");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UR_GESTURE = new DigitalInkRecognitionModelIdentifier("ur-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UR_LATN = new DigitalInkRecognitionModelIdentifier("ur-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UR_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("ur-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UR_PK = new DigitalInkRecognitionModelIdentifier("ur-PK");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UR_PK_GESTURE = new DigitalInkRecognitionModelIdentifier("ur-PK-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UZ_LATN = new DigitalInkRecognitionModelIdentifier("uz-Latn");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier UZ_LATN_GESTURE = new DigitalInkRecognitionModelIdentifier("uz-Latn-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VEL_LATN_NL = new DigitalInkRecognitionModelIdentifier("vel-Latn-NL");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VEL_LATN_NL_GESTURE = new DigitalInkRecognitionModelIdentifier("vel-Latn-NL-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VEP_LATN_RU = new DigitalInkRecognitionModelIdentifier("vep-Latn-RU");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VEP_LATN_RU_GESTURE = new DigitalInkRecognitionModelIdentifier("vep-Latn-RU-x-gesture", true);

    /* renamed from: VI */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36737VI = new DigitalInkRecognitionModelIdentifier("vi");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VI_GESTURE = new DigitalInkRecognitionModelIdentifier("vi-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VKT_LATN_ID = new DigitalInkRecognitionModelIdentifier("vkt-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier VKT_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("vkt-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WA_LATN_BE = new DigitalInkRecognitionModelIdentifier("wa-Latn-BE");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WA_LATN_BE_GESTURE = new DigitalInkRecognitionModelIdentifier("wa-Latn-BE-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WBR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("wbr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WBR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("wbr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WRY_DEVA_IN = new DigitalInkRecognitionModelIdentifier("wry-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier WRY_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("wry-Deva-IN-x-gesture", true);

    /* renamed from: XH */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36738XH = new DigitalInkRecognitionModelIdentifier("xh");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier XH_GESTURE = new DigitalInkRecognitionModelIdentifier("xh-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier XMM_LATN_ID = new DigitalInkRecognitionModelIdentifier("xmm-Latn-ID");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier XMM_LATN_ID_GESTURE = new DigitalInkRecognitionModelIdentifier("xmm-Latn-ID-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier XNR_DEVA_IN = new DigitalInkRecognitionModelIdentifier("xnr-Deva-IN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier XNR_DEVA_IN_GESTURE = new DigitalInkRecognitionModelIdentifier("xnr-Deva-IN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier YMM_LATN_SO = new DigitalInkRecognitionModelIdentifier("ymm-Latn-SO");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier YMM_LATN_SO_GESTURE = new DigitalInkRecognitionModelIdentifier("ymm-Latn-SO-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZA_LATN_CN = new DigitalInkRecognitionModelIdentifier("za-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZA_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("za-Latn-CN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI = new DigitalInkRecognitionModelIdentifier("zh-Hani");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_CN = new DigitalInkRecognitionModelIdentifier("zh-Hani-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("zh-Hani-CN-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_GESTURE = new DigitalInkRecognitionModelIdentifier("zh-Hani-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_HK = new DigitalInkRecognitionModelIdentifier("zh-Hani-HK");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_HK_GESTURE = new DigitalInkRecognitionModelIdentifier("zh-Hani-HK-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_TW = new DigitalInkRecognitionModelIdentifier("zh-Hani-TW");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZH_HANI_TW_GESTURE = new DigitalInkRecognitionModelIdentifier("zh-Hani-TW-x-gesture", true);

    /* renamed from: ZU */
    @NonNull
    public static final DigitalInkRecognitionModelIdentifier f36739ZU = new DigitalInkRecognitionModelIdentifier("zu");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZU_GESTURE = new DigitalInkRecognitionModelIdentifier("zu-x-gesture", true);

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZYJ_LATN_CN = new DigitalInkRecognitionModelIdentifier("zyj-Latn-CN");

    @NonNull
    public static final DigitalInkRecognitionModelIdentifier ZYJ_LATN_CN_GESTURE = new DigitalInkRecognitionModelIdentifier("zyj-Latn-CN-x-gesture", true);

    public DigitalInkRecognitionModelIdentifier(String str) {
        this(str, false);
    }

    @NonNull
    public static Iterable<DigitalInkRecognitionModelIdentifier> allModelIdentifiers() {
        return f36740d.values();
    }

    @NonNull
    public static Collection<DigitalInkRecognitionModelIdentifier> forLanguageSubtag(@NonNull String str) {
        return f36741e.zzb(str);
    }

    @NonNull
    public static Collection<DigitalInkRecognitionModelIdentifier> forRegionSubtag(@NonNull String str) {
        HashSet hashSet = new HashSet();
        zzaky zzakyVar = f36743g;
        hashSet.addAll(zzakyVar.zzb(str));
        for (String str2 : zzakyVar.zzt()) {
            if (zzn.zze(str2, str) || zzn.zze(str, str2)) {
                hashSet.addAll(f36743g.zzb(str2));
            }
        }
        return hashSet;
    }

    @NonNull
    public static Collection<DigitalInkRecognitionModelIdentifier> forScriptSubtag(@NonNull String str) {
        String zza;
        zzaky zzakyVar = f36742f;
        Collection<DigitalInkRecognitionModelIdentifier> zzb = zzakyVar.zzb(str);
        return (!zzb.isEmpty() || (zza = zzn.zza(str)) == null) ? zzb : zzakyVar.zzb(zza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static DigitalInkRecognitionModelIdentifier fromLanguageTag(@NonNull String str) throws MlKitException {
        DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier = null;
        iop iopVar = new iop(str, 0 == true ? 1 : 0);
        int i = 0;
        for (DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier2 : f36741e.zzb(iop.m54745b(iopVar))) {
            int m54744a = iop.m54744a(iopVar, digitalInkRecognitionModelIdentifier2.f36745b);
            int i2 = m54744a > i ? m54744a : i;
            if (m54744a > i) {
                digitalInkRecognitionModelIdentifier = digitalInkRecognitionModelIdentifier2;
            }
            i = i2;
        }
        if (digitalInkRecognitionModelIdentifier == null && iop.m54746c(iopVar) != null) {
            for (DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier3 : f36741e.zzb(iop.m54746c(iopVar))) {
                int m54744a2 = iop.m54744a(iopVar, digitalInkRecognitionModelIdentifier3.f36745b);
                int i3 = m54744a2 > i ? m54744a2 : i;
                if (m54744a2 > i) {
                    digitalInkRecognitionModelIdentifier = digitalInkRecognitionModelIdentifier3;
                }
                i = i3;
            }
        }
        return digitalInkRecognitionModelIdentifier;
    }

    @Nullable
    public static DigitalInkRecognitionModelIdentifier zza(@NonNull String str) {
        Map map = f36740d;
        if (map.containsKey(str)) {
            return (DigitalInkRecognitionModelIdentifier) map.get(str);
        }
        return null;
    }

    /* renamed from: a */
    public final boolean m28578a() {
        return this.f36746c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DigitalInkRecognitionModelIdentifier)) {
            return false;
        }
        DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier = (DigitalInkRecognitionModelIdentifier) obj;
        return this.f36746c == digitalInkRecognitionModelIdentifier.f36746c && Objects.equal(this.f36744a, digitalInkRecognitionModelIdentifier.f36744a) && Objects.equal(this.f36745b, digitalInkRecognitionModelIdentifier.f36745b);
    }

    @NonNull
    public String getLanguageSubtag() {
        return iop.m54745b(this.f36745b);
    }

    @NonNull
    public String getLanguageTag() {
        return this.f36744a;
    }

    @Nullable
    public String getRegionSubtag() {
        return iop.m54747d(this.f36745b);
    }

    @Nullable
    public String getScriptSubtag() {
        return iop.m54748e(this.f36745b);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(super.hashCode()), this.f36744a, this.f36745b, Boolean.valueOf(this.f36746c));
    }

    public DigitalInkRecognitionModelIdentifier(String str, boolean z) {
        this.f36746c = z;
        this.f36744a = str;
        try {
            iop iopVar = new iop(str, null);
            this.f36745b = iopVar;
            f36740d.put(str, this);
            f36741e.zzs(iop.m54745b(iopVar), this);
            f36742f.zzs(iop.m54748e(iopVar), this);
            if (iop.m54747d(iopVar) != null) {
                f36743g.zzs(iop.m54747d(iopVar), this);
            }
        } catch (MlKitException e) {
            InternalError internalError = new InternalError("Constant initialization failed for languageTag '" + str + "'.");
            internalError.initCause(e);
            throw internalError;
        }
    }
}
