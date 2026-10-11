package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.internal.bind.TypeAdapters;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.TimeZones;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\br\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\bÎ\u0001\u0010Ï\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001d\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0006J\u0018\u0010\u001d\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001fJ$\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u0004J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0006J.\u0010*\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\b\b\u0002\u0010'\u001a\u00020\u00102\b\b\u0002\u0010(\u001a\u00020\u00042\b\b\u0002\u0010)\u001a\u00020\u0004H\u0007J.\u0010+\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\b\b\u0002\u0010'\u001a\u00020\u00102\b\b\u0002\u0010(\u001a\u00020\u00042\b\b\u0002\u0010)\u001a\u00020\u0004H\u0007J\u000e\u0010,\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0006J\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u001fJ\u0018\u0010/\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00062\b\b\u0002\u0010.\u001a\u00020\u0010J\u001a\u00102\u001a\u00020\u00022\b\u00100\u001a\u0004\u0018\u00010\n2\b\u00101\u001a\u0004\u0018\u00010\nJ\u001a\u00103\u001a\u00020\u00102\b\u00100\u001a\u0004\u0018\u00010\n2\b\u00101\u001a\u0004\u0018\u00010\nJ\u000e\u00104\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u000e\u00105\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u000e\u00106\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u0010\u00107\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0010\u00108\u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004J.\u0010<\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J\u001e\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\u00152\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020\n0B2\u0006\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u0016\u0010D\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010E\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010F\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010H\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010L\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010O\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010P\u001a\u00020\u0006J\u0010\u0010R\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0016\u0010S\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J$\u0010T\u001a\u00020\u00062\b\b\u0002\u00104\u001a\u00020\u00022\b\b\u0002\u00105\u001a\u00020\u00022\b\b\u0002\u00106\u001a\u00020\u0002J\u0018\u0010W\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u00042\b\b\u0002\u0010V\u001a\u00020\u0010J\n\u0010X\u001a\u00020\u0006*\u00020\u0006J\n\u0010Z\u001a\u00020Y*\u00020\u0006J\n\u0010[\u001a\u00020\u0006*\u00020\u0006J\n\u0010\\\u001a\u00020Y*\u00020\u0006J\n\u0010]\u001a\u00020\u0006*\u00020\u0006J\n\u0010_\u001a\u00020^*\u00020\u0006J\n\u0010X\u001a\u00020\u0006*\u00020\u0002R\u0014\u0010`\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b`\u0010aR\u0014\u0010b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bb\u0010aR\u0014\u0010c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bc\u0010aR\u0017\u0010g\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b\b\u0010d\u001a\u0004\be\u0010fR\u0017\u0010i\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b\u0005\u0010d\u001a\u0004\bh\u0010fR\u0017\u0010k\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b=\u0010d\u001a\u0004\bj\u0010fR\u0017\u0010n\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\bl\u0010d\u001a\u0004\bm\u0010fR\u0017\u0010q\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\bo\u0010d\u001a\u0004\bp\u0010fR\u0017\u0010t\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\br\u0010d\u001a\u0004\bs\u0010fR\u0017\u0010w\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\bu\u0010d\u001a\u0004\bv\u0010fR\u0017\u0010z\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\bx\u0010d\u001a\u0004\by\u0010fR\u0017\u0010}\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b{\u0010d\u001a\u0004\b|\u0010fR\u0018\u0010\u0080\u0001\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b~\u0010d\u001a\u0004\b\u007f\u0010fR\u001a\u0010\u0083\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010d\u001a\u0005\b\u0082\u0001\u0010fR\u001a\u0010\u0086\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0084\u0001\u0010d\u001a\u0005\b\u0085\u0001\u0010fR\u001a\u0010\u0089\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0087\u0001\u0010d\u001a\u0005\b\u0088\u0001\u0010fR\u0019\u0010\u008b\u0001\u001a\u00020\u001f8\u0006¢\u0006\r\n\u0004\b\u0003\u0010d\u001a\u0005\b\u008a\u0001\u0010fR\u001a\u0010\u008e\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u008c\u0001\u0010d\u001a\u0005\b\u008d\u0001\u0010fR\u001a\u0010\u0091\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u008f\u0001\u0010d\u001a\u0005\b\u0090\u0001\u0010fR\u001a\u0010\u0094\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0092\u0001\u0010d\u001a\u0005\b\u0093\u0001\u0010fR\u001a\u0010\u0097\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0095\u0001\u0010d\u001a\u0005\b\u0096\u0001\u0010fR\u001a\u0010\u009a\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u0098\u0001\u0010d\u001a\u0005\b\u0099\u0001\u0010fR\u0019\u0010\u009c\u0001\u001a\u00020\u001f8\u0006¢\u0006\r\n\u0004\b\u0007\u0010d\u001a\u0005\b\u009b\u0001\u0010fR\u001a\u0010\u009f\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b\u009d\u0001\u0010d\u001a\u0005\b\u009e\u0001\u0010fR\u001a\u0010¢\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b \u0001\u0010d\u001a\u0005\b¡\u0001\u0010fR\u001a\u0010¥\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b£\u0001\u0010d\u001a\u0005\b¤\u0001\u0010fR\u001a\u0010¨\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b¦\u0001\u0010d\u001a\u0005\b§\u0001\u0010fR\u001a\u0010«\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b©\u0001\u0010d\u001a\u0005\bª\u0001\u0010fR\u001a\u0010®\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b¬\u0001\u0010d\u001a\u0005\b\u00ad\u0001\u0010fR\u001a\u0010±\u0001\u001a\u00020\u001f8\u0006¢\u0006\u000e\n\u0005\b¯\u0001\u0010d\u001a\u0005\b°\u0001\u0010fR\u0016\u0010²\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b²\u0001\u0010aR\u0016\u0010³\u0001\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0007\n\u0005\b³\u0001\u0010aR\u0017\u0010´\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u0017\u0010¶\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b¶\u0001\u0010µ\u0001R\u0017\u0010·\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b·\u0001\u0010µ\u0001R\u0017\u0010¸\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b¸\u0001\u0010µ\u0001R\u0017\u0010¹\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b¹\u0001\u0010µ\u0001R\u0017\u0010º\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u0017\u0010¼\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b¼\u0001\u0010»\u0001R\u0017\u0010½\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b½\u0001\u0010»\u0001R\u0017\u0010¾\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b¾\u0001\u0010»\u0001R\u0017\u0010¿\u0001\u001a\u00020\u00028\u0006X\u0086T¢\u0006\b\n\u0006\b¿\u0001\u0010µ\u0001R\u0013\u0010Á\u0001\u001a\u00020\u00048F¢\u0006\u0007\u001a\u0005\b\u0014\u0010À\u0001R\u0014\u0010Ã\u0001\u001a\u00020\u00048F¢\u0006\b\u001a\u0006\bÂ\u0001\u0010À\u0001R\u0013\u0010Å\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b\u0017\u0010Ä\u0001R\u0012\u0010F\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b\u0018\u0010Ä\u0001R\u0013\u0010Ç\u0001\u001a\u00020\u001f8F¢\u0006\u0007\u001a\u0005\bÆ\u0001\u0010fR\u0013\u0010È\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b\u0019\u0010Ä\u0001R\u0013\u0010É\u0001\u001a\u00020\n8F¢\u0006\u0007\u001a\u0005\b\u001b\u0010Ä\u0001R\u0014\u0010Ë\u0001\u001a\u00020\u00048F¢\u0006\b\u001a\u0006\bÊ\u0001\u0010À\u0001R\u0014\u0010Í\u0001\u001a\u00020\n8F¢\u0006\b\u001a\u0006\bÌ\u0001\u0010Ä\u0001¨\u0006Ð\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/DateTimeUtil;", "", "", GoogleApiAvailabilityLight.f29016b, "", "b", "", "t", "a", "millisOfNow", "Ljava/util/Date;", "dateOfNow", Constants.ATTRNAME_FORMAT, "stringOfNow", "Landroid/content/Context;", "context", "", "isSystemHour24", "getCurrentTimeString", "pattern", "getCurrentTime", "Ljava/util/Calendar;", SyncConstant.KCALENDAR_OSS_DIR, "getMonthBegin", "getMonthEnd", "getDayBegin", "date", "getDayEnd", "getCalendarDateString", "formatDate", "time", "Ljava/text/SimpleDateFormat;", "simpleDateFormat", "dateString", "timeZone", "parse", "durationMilliseconds", "formatDuration", "formatDurationHHMMSSExact", "forceShowHour", "showHourFormat", "noHourFormat", "formatDurationSecondExact", "formatDurationSecondRoundUp", "formatDurationMinuteSeconds", "millis", "appendSpace", "formatLeftTime", "o1", "o2", "compareDate", "laterThan", "hour", TypeAdapters.C6590r.f36277e, TypeAdapters.C6590r.f36278f, "getDateTime", "getSimpleDateFormat", TypeAdapters.C6590r.f36273a, TypeAdapters.C6590r.f36274b, "day", "getCalendar", "c", "", "setCalendar", "startDate", "endDate", "", "getDatesRangIn", "countDaysRangIn", "monthStart", "monthEnd", "getPreMonthDate", "getNextMonthDate", "weekStart", "weekEnd", "getPreWeekDate", "getNextWeekDate", "isLaterThanToday", "dayTime", "getDayTime", "weekTime", "getWeekTime", "safelyGetTime", "getTimeStr", "getTimeMills", "rftTimeString", "safeMode", "rfcTimeToLong", "minuteToMs", "", "msToMinute", "hourToMs", "msToHour", "msToSecLong", "", "msToSecFloat", "FORMAT_RFC3339", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "FORMAT_YYYYMMDD", "FORMAT_YYYYMMDD_HHMMSS", "Ljava/text/SimpleDateFormat;", "getDATE_FORMAT_YMDHMS", "()Ljava/text/SimpleDateFormat;", "DATE_FORMAT_YMDHMS", "getDATE_FORMAT_YYYYMMDD_HHMMSS", "DATE_FORMAT_YYYYMMDD_HHMMSS", "getDATE_FORMAT_YYYYMMDD_HH_MM_SS", "DATE_FORMAT_YYYYMMDD_HH_MM_SS", "d", "getDATE_FORMAT_YYYYMMDD_HHMMSS_2", "DATE_FORMAT_YYYYMMDD_HHMMSS_2", "e", "getDATE_FORMAT_YYYYMMDD_HHMMSS_3", "DATE_FORMAT_YYYYMMDD_HHMMSS_3", C6997f.f39671c, "getDATE_FORMAT_YYYYMMDD_HH_MM", "DATE_FORMAT_YYYYMMDD_HH_MM", C6998g.f39679a, "getDATE_FORMAT_YYYYMMDD_HHMM", "DATE_FORMAT_YYYYMMDD_HHMM", C6999h.f39688c, "getDATE_FORMAT_YYYYMMDD_HHMM_2", "DATE_FORMAT_YYYYMMDD_HHMM_2", "i", "getDATE_FORMAT_YYYYMMDD", "DATE_FORMAT_YYYYMMDD", "j", "getDATE_FORMAT_YYYYMMDD_2", "DATE_FORMAT_YYYYMMDD_2", C4921e.f26537n, "getDATE_FORMAT_YYYYMMDD_3", "DATE_FORMAT_YYYYMMDD_3", "l", "getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z", "DATE_FORMAT_YYYYMMDD_T_HHMMSS_Z", "m", "getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME", "DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME", "getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE", "DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE", C4921e.f26528e, "getDATE_FORMAT_YYYY_MM_DD_HHMMSS", "DATE_FORMAT_YYYY_MM_DD_HHMMSS", "p", "getDATE_FORMAT_MMDD", "DATE_FORMAT_MMDD", "q", "getDATE_FORMAT_HH", "DATE_FORMAT_HH", "r", "getDATE_FORMAT_HHMM", "DATE_FORMAT_HHMM", "s", "getDATE_FORMAT_DD", "DATE_FORMAT_DD", "getDATE_FORMAT_WEEK", "DATE_FORMAT_WEEK", "u", "getDATE_FORMAT_HHMM_12", "DATE_FORMAT_HHMM_12", "v", "getDATE_FORMAT_MM_SS", "DATE_FORMAT_MM_SS", "w", "getDATE_FORMAT_FILE_NAME", "DATE_FORMAT_FILE_NAME", "x", "getDATE_FORMAT_HH_12", "DATE_FORMAT_HH_12", "y", "getDATE_FORMAT_MM", "DATE_FORMAT_MM", "z", "getDATE_FORMAT_MMDD_HHMMSS_SSS", "DATE_FORMAT_MMDD_HHMMSS_SSS", "A", "getDATE_FORMAT_RFC3339", "DATE_FORMAT_RFC3339", "HOURS_12", "HOURS_24", "WEEK_DAYS", "I", "HALF_SECOND_MILLS", "ONE_SECOND_TIME_IN_MILL", "ONE_HOUR_TIME_IN_MILL", "ONE_MINUTE_TIME_IN_MILL", "ONE_DAY_TIME_IN_MILL", "J", "ONE_WEEK_TIME_IN_MILL", "ONE_MONTH_TIME_IN_MILL", "ONE_YEAR_TIME_IN_MILL", "THIRD_SECOND_TIME_IN_MILL", "()Ljava/lang/String;", "currentTime", "getCurrentTime24Format", "currentTime24Format", "()Ljava/util/Date;", "monthBegin", "getWeekDateFormat", "weekDateFormat", "dayBegin", "dayEnd", "getBootUpTime", "bootUpTime", "getNowDate", "nowDate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DateTimeUtil {

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_RFC3339;

    @NotNull
    public static final String FORMAT_RFC3339 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

    @NotNull
    public static final String FORMAT_YYYYMMDD = "yyyy-MM-dd";

    @NotNull
    public static final String FORMAT_YYYYMMDD_HHMMSS = "yyyy-MM-dd HH:mm:ss";
    public static final int HALF_SECOND_MILLS = 500;

    @NotNull
    public static final String HOURS_12 = "12";

    @NotNull
    public static final String HOURS_24 = "24";

    @NotNull
    public static final DateTimeUtil INSTANCE;
    public static final long ONE_DAY_TIME_IN_MILL = 86400000;
    public static final int ONE_HOUR_TIME_IN_MILL = 3600000;
    public static final int ONE_MINUTE_TIME_IN_MILL = 60000;
    public static final long ONE_MONTH_TIME_IN_MILL = 2592000000L;
    public static final int ONE_SECOND_TIME_IN_MILL = 1000;
    public static final long ONE_WEEK_TIME_IN_MILL = 604800000;
    public static final long ONE_YEAR_TIME_IN_MILL = 31104000000L;
    public static final int THIRD_SECOND_TIME_IN_MILL = 3000;
    public static final int WEEK_DAYS = 7;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YMDHMS;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMMSS;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HH_MM_SS;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMMSS_2;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMMSS_3;

    /* renamed from: f */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HH_MM;

    /* renamed from: g */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMM;

    /* renamed from: h */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMM_2;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_2;

    /* renamed from: k */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_3;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_T_HHMMSS_Z;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME;

    /* renamed from: n */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE;

    /* renamed from: o */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_YYYY_MM_DD_HHMMSS;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_MMDD;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_HH;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_HHMM;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_DD;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_WEEK;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_HHMM_12;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_MM_SS;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_FILE_NAME;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_HH_12;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_MM;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat DATE_FORMAT_MMDD_HHMMSS_SSS;

    static {
        DateTimeUtil dateTimeUtil = new DateTimeUtil();
        INSTANCE = dateTimeUtil;
        DATE_FORMAT_YMDHMS = dateTimeUtil.getSimpleDateFormat("yyyyMMddHHmmss");
        DATE_FORMAT_YYYYMMDD_HHMMSS = dateTimeUtil.getSimpleDateFormat(FORMAT_YYYYMMDD_HHMMSS);
        DATE_FORMAT_YYYYMMDD_HH_MM_SS = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd_HH_mm_ss");
        DATE_FORMAT_YYYYMMDD_HHMMSS_2 = dateTimeUtil.getSimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        DATE_FORMAT_YYYYMMDD_HHMMSS_3 = dateTimeUtil.getSimpleDateFormat("yyyyMMdd_HHmmss");
        DATE_FORMAT_YYYYMMDD_HH_MM = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd_HH_mm");
        DATE_FORMAT_YYYYMMDD_HHMM = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd HH:mm");
        DATE_FORMAT_YYYYMMDD_HHMM_2 = dateTimeUtil.getSimpleDateFormat("yyyy/MM/dd HH:mm");
        DATE_FORMAT_YYYYMMDD = dateTimeUtil.getSimpleDateFormat("dd/MM/yyyy");
        DATE_FORMAT_YYYYMMDD_2 = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd");
        DATE_FORMAT_YYYYMMDD_3 = dateTimeUtil.getSimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat simpleDateFormat = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        DATE_FORMAT_YYYYMMDD_T_HHMMSS_Z = simpleDateFormat;
        DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME = dateTimeUtil.getSimpleDateFormat("yyyy-MM-dd HH mm ss");
        DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.getDefault());
        DATE_FORMAT_YYYY_MM_DD_HHMMSS = new SimpleDateFormat("yyyy_MM_dd_HHmmss", Locale.getDefault());
        DATE_FORMAT_MMDD = dateTimeUtil.getSimpleDateFormat("MM/dd");
        DATE_FORMAT_HH = new SimpleDateFormat("HH", Locale.getDefault());
        DATE_FORMAT_HHMM = new SimpleDateFormat("HH:mm", Locale.getDefault());
        DATE_FORMAT_DD = new SimpleDateFormat("dd", Locale.getDefault());
        DATE_FORMAT_WEEK = dateTimeUtil.getSimpleDateFormat("EEEE");
        DATE_FORMAT_HHMM_12 = dateTimeUtil.getSimpleDateFormat("hh:mm");
        DATE_FORMAT_MM_SS = dateTimeUtil.getSimpleDateFormat("mm_ss");
        DATE_FORMAT_FILE_NAME = dateTimeUtil.getSimpleDateFormat("HHmmss");
        DATE_FORMAT_HH_12 = dateTimeUtil.getSimpleDateFormat("hh");
        DATE_FORMAT_MM = dateTimeUtil.getSimpleDateFormat("mm");
        DATE_FORMAT_MMDD_HHMMSS_SSS = dateTimeUtil.getSimpleDateFormat("MM-dd HH:mm:ss.SSS");
        DATE_FORMAT_RFC3339 = simpleDateFormat;
    }

    public static /* synthetic */ String formatDuration$default(DateTimeUtil dateTimeUtil, long j, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "%02d:%02d:%02d";
        }
        return dateTimeUtil.formatDuration(j, str);
    }

    public static /* synthetic */ String formatDurationSecondExact$default(DateTimeUtil dateTimeUtil, long j, boolean z, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 4) != 0) {
            str = "%d:%02d:%02d";
        }
        String str3 = str;
        if ((i & 8) != 0) {
            str2 = "%02d:%02d";
        }
        return dateTimeUtil.formatDurationSecondExact(j, z2, str3, str2);
    }

    public static /* synthetic */ String formatDurationSecondRoundUp$default(DateTimeUtil dateTimeUtil, long j, boolean z, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 4) != 0) {
            str = "%02d:%02d:%02d";
        }
        String str3 = str;
        if ((i & 8) != 0) {
            str2 = "%02d:%02d";
        }
        return dateTimeUtil.formatDurationSecondRoundUp(j, z2, str3, str2);
    }

    public static /* synthetic */ String formatLeftTime$default(DateTimeUtil dateTimeUtil, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return dateTimeUtil.formatLeftTime(j, z);
    }

    public static /* synthetic */ long getTimeMills$default(DateTimeUtil dateTimeUtil, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        return dateTimeUtil.getTimeMills(i, i2, i3);
    }

    public static /* synthetic */ long parse$default(DateTimeUtil dateTimeUtil, String str, SimpleDateFormat simpleDateFormat, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        return dateTimeUtil.parse(str, simpleDateFormat, str2);
    }

    public static /* synthetic */ long rfcTimeToLong$default(DateTimeUtil dateTimeUtil, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return dateTimeUtil.rfcTimeToLong(str, z);
    }

    public static /* synthetic */ String stringOfNow$default(DateTimeUtil dateTimeUtil, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = FORMAT_YYYYMMDD_HHMMSS;
        }
        return dateTimeUtil.stringOfNow(str);
    }

    /* renamed from: a */
    public final String m32029a(long t) {
        long j = 60;
        return ((int) (t / 3600)) + ':' + m32030b((int) ((t / j) % j)) + ':' + m32030b((int) (t % j));
    }

    /* renamed from: b */
    public final String m32030b(int r2) {
        if (r2 >= 10) {
            return String.valueOf(r2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append('0');
        sb.append(r2);
        return sb.toString();
    }

    public final int compareDate(@Nullable Date o1, @Nullable Date o2) {
        if (o1 == null && o2 == null) {
            return 0;
        }
        if (o1 == null) {
            return -1;
        }
        if (o2 == null) {
            return 1;
        }
        return o1.compareTo(o2);
    }

    public final int countDaysRangIn(@NotNull Date startDate, @NotNull Date endDate) {
        Intrinsics.checkNotNullParameter(startDate, "startDate");
        Intrinsics.checkNotNullParameter(endDate, "endDate");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(startDate);
        int i = 0;
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(endDate);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        while (!calendar.after(calendar2)) {
            i++;
            calendar.add(5, 1);
        }
        return i;
    }

    @NotNull
    public final Date dateOfNow() {
        return new Date();
    }

    @NotNull
    public final String format(long j, @NotNull SimpleDateFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        String format2 = format.format(Long.valueOf(j));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    @NotNull
    public final String formatDate(@Nullable Date date) {
        return date == null ? "" : formatDate(date, DATE_FORMAT_YYYYMMDD_HHMMSS);
    }

    @NotNull
    public final String formatDuration(long durationMilliseconds, @NotNull String r9) {
        Intrinsics.checkNotNullParameter(r9, "format");
        long j = durationMilliseconds / 3600000;
        long j2 = durationMilliseconds % 3600000;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), r9, Arrays.copyOf(new Object[]{Long.valueOf(j), Long.valueOf(j2 / 60000), Long.valueOf((j2 % 60000) / 1000)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        return format;
    }

    @NotNull
    public final String formatDurationHHMMSSExact(long durationMilliseconds) {
        long j = durationMilliseconds / 3600000;
        long j2 = (durationMilliseconds % 3600000) / 60000;
        String format = new DecimalFormat("00.0").format(((float) (r7 % 60000)) / 1000.0f);
        StringBuilder sb = new StringBuilder();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.getDefault(), "%02d:%02d:", Arrays.copyOf(new Object[]{Long.valueOf(j), Long.valueOf(j2)}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        sb.append(format2);
        sb.append(format);
        return sb.toString();
    }

    @NotNull
    public final String formatDurationMinuteSeconds(long durationMilliseconds) {
        int second = second(durationMilliseconds);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), "%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(second / 60), Integer.valueOf(second % 60)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        return format;
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondExact(long j) {
        return formatDurationSecondExact$default(this, j, false, null, null, 14, null);
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondRoundUp(long j) {
        return formatDurationSecondRoundUp$default(this, j, false, null, null, 14, null);
    }

    @NotNull
    public final String formatLeftTime(long millis, final boolean appendSpace) {
        long j;
        long j2;
        long j3 = millis / ONE_YEAR_TIME_IN_MILL;
        long j4 = (millis % ONE_YEAR_TIME_IN_MILL) / 2592000000L;
        long j5 = (millis % 2592000000L) / 86400000;
        long j6 = 3600000;
        long j7 = (millis % 86400000) / j6;
        long j8 = 60000;
        long j9 = (millis % j6) / j8;
        long j10 = (millis % j8) / 1000;
        StringBuilder sb = new StringBuilder();
        if (j3 > 0) {
            j = j10;
            String string = ResManager.INSTANCE.getString(C7106R.string.unit_year);
            sb.append(j3);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf.append(string);
            Intrinsics.checkNotNullExpressionValue(appendIf, "append(...)");
            StringKt.appendIf(appendIf, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        } else {
            j = j10;
        }
        long j11 = j3 + 0;
        if (j11 > 0 || j4 > 0) {
            String string2 = ResManager.INSTANCE.getString(C7106R.string.unit_month);
            sb.append(j4);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf2 = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf2.append(string2);
            Intrinsics.checkNotNullExpressionValue(appendIf2, "append(...)");
            StringKt.appendIf(appendIf2, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        }
        long j12 = j11 + j4;
        if (j12 > 0 || j5 > 0) {
            String string3 = ResManager.INSTANCE.getString(C7106R.string.unit_day);
            sb.append(j5);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf3 = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf3.append(string3);
            Intrinsics.checkNotNullExpressionValue(appendIf3, "append(...)");
            StringKt.appendIf(appendIf3, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        }
        long j13 = j12 + j5;
        if (j13 > 0 || j7 > 0) {
            String string4 = ResManager.INSTANCE.getString(C7106R.string.unit_hour);
            sb.append(j7);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf4 = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf4.append(string4);
            Intrinsics.checkNotNullExpressionValue(appendIf4, "append(...)");
            StringKt.appendIf(appendIf4, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        }
        long j14 = j13 + j7;
        if (j14 > 0 || j9 > 0) {
            String string5 = ResManager.INSTANCE.getString(C7106R.string.unit_minute);
            sb.append(j9);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf5 = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf5.append(string5);
            Intrinsics.checkNotNullExpressionValue(appendIf5, "append(...)");
            StringKt.appendIf(appendIf5, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$10
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        }
        long j15 = j14 + j9;
        if (j15 > 0 || j > 0) {
            String string6 = ResManager.INSTANCE.getString(C7106R.string.unit_second);
            j2 = j;
            sb.append(j2);
            Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            StringBuilder appendIf6 = StringKt.appendIf(sb, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$11
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
            appendIf6.append(string6);
            Intrinsics.checkNotNullExpressionValue(appendIf6, "append(...)");
            StringKt.appendIf(appendIf6, " ", new Function0<Boolean>() { // from class: com.onyx.android.sdk.base.utils.DateTimeUtil$formatLeftTime$12
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(appendSpace);
                }
            });
        } else {
            j2 = j;
        }
        if (j15 + j2 <= 0) {
            sb.append("0");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getBootUpTime() {
        long elapsedRealtime = SystemClock.elapsedRealtime() / 1000;
        if (elapsedRealtime == 0) {
            elapsedRealtime = 1;
        }
        return m32029a(elapsedRealtime);
    }

    @NotNull
    public final Calendar getCalendar(int r2, int r3, int day, int hour, int r6) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, r2);
        calendar.set(2, r3 - 1);
        calendar.set(5, day);
        calendar.set(11, hour);
        calendar.set(12, r6);
        Intrinsics.checkNotNull(calendar);
        return calendar;
    }

    @NotNull
    public final String getCalendarDateString(@NotNull Calendar r6) {
        Object valueOf;
        Object valueOf2;
        Intrinsics.checkNotNullParameter(r6, "calendar");
        int i = r6.get(2) + 1;
        int i2 = r6.get(5);
        StringBuilder sb = new StringBuilder();
        sb.append(r6.get(1));
        sb.append("");
        if (i < 10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('0');
            sb2.append(i);
            valueOf = sb2.toString();
        } else {
            valueOf = Integer.valueOf(i);
        }
        sb.append(valueOf);
        sb.append("");
        if (i2 < 10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('0');
            sb3.append(i2);
            valueOf2 = sb3.toString();
        } else {
            valueOf2 = Integer.valueOf(i2);
        }
        sb.append(valueOf2);
        return sb.toString();
    }

    @NotNull
    public final String getCurrentTime() {
        return getCurrentTime("yyyy-MM-dd hh:mm:ss:SSS");
    }

    @NotNull
    public final String getCurrentTime24Format() {
        return getCurrentTime("yyyy-MM-dd HH:mm:ss:SSS");
    }

    @NotNull
    public final String getCurrentTimeString(@Nullable Context context) {
        String format = DateFormat.getTimeFormat(context).format(new Date());
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_DD() {
        return DATE_FORMAT_DD;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_FILE_NAME() {
        return DATE_FORMAT_FILE_NAME;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_HH() {
        return DATE_FORMAT_HH;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_HHMM() {
        return DATE_FORMAT_HHMM;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_HHMM_12() {
        return DATE_FORMAT_HHMM_12;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_HH_12() {
        return DATE_FORMAT_HH_12;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_MM() {
        return DATE_FORMAT_MM;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_MMDD() {
        return DATE_FORMAT_MMDD;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_MMDD_HHMMSS_SSS() {
        return DATE_FORMAT_MMDD_HHMMSS_SSS;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_MM_SS() {
        return DATE_FORMAT_MM_SS;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_RFC3339() {
        return DATE_FORMAT_RFC3339;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_WEEK() {
        return DATE_FORMAT_WEEK;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YMDHMS() {
        return DATE_FORMAT_YMDHMS;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD() {
        return DATE_FORMAT_YYYYMMDD;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_2() {
        return DATE_FORMAT_YYYYMMDD_2;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_3() {
        return DATE_FORMAT_YYYYMMDD_3;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMM() {
        return DATE_FORMAT_YYYYMMDD_HHMM;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMMSS() {
        return DATE_FORMAT_YYYYMMDD_HHMMSS;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMMSS_2() {
        return DATE_FORMAT_YYYYMMDD_HHMMSS_2;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMMSS_3() {
        return DATE_FORMAT_YYYYMMDD_HHMMSS_3;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE() {
        return DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME() {
        return DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HHMM_2() {
        return DATE_FORMAT_YYYYMMDD_HHMM_2;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HH_MM() {
        return DATE_FORMAT_YYYYMMDD_HH_MM;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_HH_MM_SS() {
        return DATE_FORMAT_YYYYMMDD_HH_MM_SS;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z() {
        return DATE_FORMAT_YYYYMMDD_T_HHMMSS_Z;
    }

    @NotNull
    public final SimpleDateFormat getDATE_FORMAT_YYYY_MM_DD_HHMMSS() {
        return DATE_FORMAT_YYYY_MM_DD_HHMMSS;
    }

    public final long getDateTime(@Nullable Date date) {
        if (date != null) {
            return date.getTime();
        }
        return 0L;
    }

    @NotNull
    public final List<Date> getDatesRangIn(@NotNull Date startDate, @NotNull Date endDate) {
        Intrinsics.checkNotNullParameter(startDate, "startDate");
        Intrinsics.checkNotNullParameter(endDate, "endDate");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(startDate);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(endDate);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        ArrayList arrayList = new ArrayList();
        while (!calendar.after(calendar2)) {
            Date time = calendar.getTime();
            Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
            arrayList.add(time);
            calendar.add(5, 1);
        }
        return arrayList;
    }

    @NotNull
    public final Date getDayBegin() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance(...)");
        return getDayBegin(calendar);
    }

    @NotNull
    public final Date getDayEnd() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance(...)");
        return getDayEnd(calendar);
    }

    public final long getDayTime(long dayTime) {
        return ((Number) MathUtils.INSTANCE.clamp(Long.valueOf(dayTime), 0L, 86400000L)).longValue();
    }

    @NotNull
    public final Date getMonthBegin() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance(...)");
        return getMonthBegin(calendar);
    }

    @NotNull
    public final Date getMonthEnd() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance(...)");
        return getMonthEnd(calendar);
    }

    @NotNull
    public final Date getNextMonthDate(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(2, 1);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date getNextWeekDate(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(5, 7);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date getNowDate() {
        return new Date();
    }

    @NotNull
    public final Date getPreMonthDate(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(2, -1);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date getPreWeekDate(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(5, -7);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final SimpleDateFormat getSimpleDateFormat(@Nullable String pattern) {
        return new SimpleDateFormat(pattern, Locale.getDefault());
    }

    public final long getTimeMills(int hour, int r6, int r7) {
        return (hour * 60 * 60 * 1000) + (r6 * 60 * 1000) + (r7 * 1000);
    }

    @NotNull
    public final String getTimeStr(int hour, int r2) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), "%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(hour), Integer.valueOf(r2)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        return format;
    }

    @NotNull
    public final SimpleDateFormat getWeekDateFormat() {
        return new SimpleDateFormat("EEEE", Locale.getDefault());
    }

    public final long getWeekTime(long weekTime) {
        return ((Number) MathUtils.INSTANCE.clamp(Long.valueOf(weekTime), 0L, 604800000L)).longValue();
    }

    public final int hour(long time) {
        return (int) Math.ceil((time / 3600) / 1000);
    }

    public final long hourToMs(long j) {
        return j * 3600000;
    }

    public final boolean isLaterThanToday(@NotNull String dateString) {
        Intrinsics.checkNotNullParameter(dateString, "dateString");
        Date date = new Date(parse$default(this, dateString, DATE_FORMAT_YYYYMMDD_2, null, 4, null));
        Calendar calendar = Calendar.getInstance();
        calendar.set(14, 0);
        Intrinsics.checkNotNull(calendar);
        return laterThan(date, getDayBegin(calendar));
    }

    public final boolean isSystemHour24(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Intrinsics.areEqual(HOURS_24, Settings.System.getString(context.getContentResolver(), "time_12_24"));
    }

    public final boolean laterThan(@Nullable Date o1, @Nullable Date o2) {
        return compareDate(o1, o2) > 0;
    }

    public final long millisOfNow() {
        return System.currentTimeMillis();
    }

    public final int minute(long j) {
        return (int) Math.ceil((((float) j) / 1000.0f) / 60);
    }

    public final long minuteToMs(long j) {
        return j * 60000;
    }

    @NotNull
    public final Date monthEnd(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Intrinsics.checkNotNull(calendar);
        return getMonthEnd(calendar);
    }

    @NotNull
    public final Date monthStart(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Intrinsics.checkNotNull(calendar);
        return getMonthBegin(calendar);
    }

    public final double msToHour(long j) {
        return j / 3600000;
    }

    public final double msToMinute(long j) {
        return j / 60000;
    }

    public final float msToSecFloat(long j) {
        return ((float) j) / 1000.0f;
    }

    public final long msToSecLong(long j) {
        return (float) Math.ceil(((float) j) / 1000.0f);
    }

    @JvmOverloads
    public final long parse(@NotNull String dateString, @NotNull SimpleDateFormat simpleDateFormat) {
        Intrinsics.checkNotNullParameter(dateString, "dateString");
        Intrinsics.checkNotNullParameter(simpleDateFormat, "simpleDateFormat");
        return parse$default(this, dateString, simpleDateFormat, null, 4, null);
    }

    public final long rfcTimeToLong(@NotNull String rftTimeString, boolean safeMode) {
        Intrinsics.checkNotNullParameter(rftTimeString, "rftTimeString");
        if (!safeMode) {
            return DATE_FORMAT_RFC3339.parse(rftTimeString).getTime();
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        return simpleDateFormat.parse(rftTimeString).getTime();
    }

    public final long safelyGetTime(@Nullable Date date) {
        if (date != null) {
            return date.getTime();
        }
        return 0L;
    }

    public final int second(long j) {
        return (int) Math.ceil(((float) j) / 1000.0f);
    }

    public final void setCalendar(@NotNull Calendar c, int hour, int r3) {
        Intrinsics.checkNotNullParameter(c, "c");
        c.set(11, hour);
        c.set(12, r3);
    }

    @NotNull
    public final String stringOfNow(@NotNull String r2) {
        Intrinsics.checkNotNullParameter(r2, "format");
        String format = getSimpleDateFormat(r2).format(dateOfNow());
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final Date weekEnd(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(1);
        calendar.setTime(date);
        calendar.set(7, calendar.getFirstDayOfWeek() + 6);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date weekStart(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(1);
        calendar.setTime(date);
        calendar.set(7, calendar.getFirstDayOfWeek());
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final String formatDate(long time) {
        return formatDate(new Date(time));
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondExact(long j, boolean z) {
        return formatDurationSecondExact$default(this, j, z, null, null, 12, null);
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondRoundUp(long j, boolean z) {
        return formatDurationSecondRoundUp$default(this, j, z, null, null, 12, null);
    }

    @NotNull
    public final String getCurrentTime(@Nullable String pattern) {
        return formatDate(Calendar.getInstance().getTime(), new SimpleDateFormat(pattern, Locale.getDefault()));
    }

    @NotNull
    public final Date getDayBegin(@NotNull Calendar r8) {
        Intrinsics.checkNotNullParameter(r8, "calendar");
        r8.set(r8.get(1), r8.get(2), r8.get(5), 0, 0, 0);
        Date time = r8.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date getDayEnd(@NotNull Calendar r8) {
        Intrinsics.checkNotNullParameter(r8, "calendar");
        r8.set(r8.get(1), r8.get(2), r8.get(5), 23, 59, 59);
        Date time = r8.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    @NotNull
    public final Date getMonthBegin(@NotNull Calendar r3) {
        Intrinsics.checkNotNullParameter(r3, "calendar");
        r3.set(5, r3.getActualMinimum(5));
        return getDayBegin(r3);
    }

    @NotNull
    public final Date getMonthEnd(@NotNull Calendar r3) {
        Intrinsics.checkNotNullParameter(r3, "calendar");
        r3.set(5, r3.getActualMaximum(5));
        return getDayEnd(r3);
    }

    public final long minuteToMs(int i) {
        return minuteToMs(i);
    }

    @JvmOverloads
    public final long parse(@NotNull String dateString, @NotNull SimpleDateFormat simpleDateFormat, @Nullable String timeZone) {
        Date date;
        Intrinsics.checkNotNullParameter(dateString, "dateString");
        Intrinsics.checkNotNullParameter(simpleDateFormat, "simpleDateFormat");
        if (!StringUtils.isBlank(timeZone)) {
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(timeZone));
        }
        try {
            date = simpleDateFormat.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
            date = null;
        }
        if (date != null) {
            return date.getTime();
        }
        return 0L;
    }

    @NotNull
    public final String formatDate(@Nullable Date date, @NotNull SimpleDateFormat simpleDateFormat) {
        Intrinsics.checkNotNullParameter(simpleDateFormat, "simpleDateFormat");
        if (date == null) {
            return "";
        }
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        String format = simpleDateFormat.format(date);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondExact(long j, boolean z, @NotNull String showHourFormat) {
        Intrinsics.checkNotNullParameter(showHourFormat, "showHourFormat");
        return formatDurationSecondExact$default(this, j, z, showHourFormat, null, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondRoundUp(long j, boolean z, @NotNull String showHourFormat) {
        Intrinsics.checkNotNullParameter(showHourFormat, "showHourFormat");
        return formatDurationSecondRoundUp$default(this, j, z, showHourFormat, null, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondExact(long durationMilliseconds, boolean forceShowHour, @NotNull String showHourFormat, @NotNull String noHourFormat) {
        Intrinsics.checkNotNullParameter(showHourFormat, "showHourFormat");
        Intrinsics.checkNotNullParameter(noHourFormat, "noHourFormat");
        long j = durationMilliseconds / 1000;
        long j2 = 3600;
        long j3 = j / j2;
        long j4 = j % j2;
        long j5 = 60;
        long j6 = j4 / j5;
        long j7 = j4 % j5;
        if (!forceShowHour && j3 <= 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.getDefault(), noHourFormat, Arrays.copyOf(new Object[]{Long.valueOf(j6), Long.valueOf(j7)}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            return format;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.getDefault(), showHourFormat, Arrays.copyOf(new Object[]{Long.valueOf(j3), Long.valueOf(j6), Long.valueOf(j7)}, 3));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    @JvmOverloads
    @NotNull
    public final String formatDurationSecondRoundUp(long durationMilliseconds, boolean forceShowHour, @NotNull String showHourFormat, @NotNull String noHourFormat) {
        Intrinsics.checkNotNullParameter(showHourFormat, "showHourFormat");
        Intrinsics.checkNotNullParameter(noHourFormat, "noHourFormat");
        int second = second(durationMilliseconds);
        int i = second / 3600;
        int i2 = second % 3600;
        int i3 = i2 / 60;
        int i4 = i2 % 60;
        if (!forceShowHour && i <= 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.getDefault(), noHourFormat, Arrays.copyOf(new Object[]{Integer.valueOf(i3), Integer.valueOf(i4)}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            return format;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String format2 = String.format(Locale.getDefault(), showHourFormat, Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i3), Integer.valueOf(i4)}, 3));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    @NotNull
    public final Date getDayBegin(@Nullable Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Intrinsics.checkNotNull(calendar);
        return getDayBegin(calendar);
    }

    @NotNull
    public final Date getDayEnd(@Nullable Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Intrinsics.checkNotNull(calendar);
        return getDayEnd(calendar);
    }
}
