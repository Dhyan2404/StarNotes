.class public final Lcom/onyx/android/sdk/base/utils/DateTimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0016\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u000b\u0008\u0002\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015J\u0010\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0006J\u0018\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001fJ$\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0006J.\u0010*\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010\'\u001a\u00020\u00102\u0008\u0008\u0002\u0010(\u001a\u00020\u00042\u0008\u0008\u0002\u0010)\u001a\u00020\u0004H\u0007J.\u0010+\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010\'\u001a\u00020\u00102\u0008\u0008\u0002\u0010(\u001a\u00020\u00042\u0008\u0008\u0002\u0010)\u001a\u00020\u0004H\u0007J\u000e\u0010,\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u0006J\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u001fJ\u0018\u0010/\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00062\u0008\u0008\u0002\u0010.\u001a\u00020\u0010J\u001a\u00102\u001a\u00020\u00022\u0008\u00100\u001a\u0004\u0018\u00010\n2\u0008\u00101\u001a\u0004\u0018\u00010\nJ\u001a\u00103\u001a\u00020\u00102\u0008\u00100\u001a\u0004\u0018\u00010\n2\u0008\u00101\u001a\u0004\u0018\u00010\nJ\u000e\u00104\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u000e\u00105\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u000e\u00106\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006J\u0010\u00107\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0010\u00108\u001a\u00020\u001f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004J.\u0010<\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J\u001e\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\u00152\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\n0B2\u0006\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u0016\u0010D\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\n2\u0006\u0010A\u001a\u00020\nJ\u000e\u0010E\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010F\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010G\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010H\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010L\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010O\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010P\u001a\u00020\u0006J\u0010\u0010R\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\nJ\u0016\u0010S\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002J$\u0010T\u001a\u00020\u00062\u0008\u0008\u0002\u00104\u001a\u00020\u00022\u0008\u0008\u0002\u00105\u001a\u00020\u00022\u0008\u0008\u0002\u00106\u001a\u00020\u0002J\u0018\u0010W\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u00042\u0008\u0008\u0002\u0010V\u001a\u00020\u0010J\n\u0010X\u001a\u00020\u0006*\u00020\u0006J\n\u0010Z\u001a\u00020Y*\u00020\u0006J\n\u0010[\u001a\u00020\u0006*\u00020\u0006J\n\u0010\\\u001a\u00020Y*\u00020\u0006J\n\u0010]\u001a\u00020\u0006*\u00020\u0006J\n\u0010_\u001a\u00020^*\u00020\u0006J\n\u0010X\u001a\u00020\u0006*\u00020\u0002R\u0014\u0010`\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008b\u0010aR\u0014\u0010c\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008c\u0010aR\u0017\u0010g\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010d\u001a\u0004\u0008e\u0010fR\u0017\u0010i\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010d\u001a\u0004\u0008h\u0010fR\u0017\u0010k\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010d\u001a\u0004\u0008j\u0010fR\u0017\u0010n\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010d\u001a\u0004\u0008m\u0010fR\u0017\u0010q\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010d\u001a\u0004\u0008p\u0010fR\u0017\u0010t\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008r\u0010d\u001a\u0004\u0008s\u0010fR\u0017\u0010w\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008u\u0010d\u001a\u0004\u0008v\u0010fR\u0017\u0010z\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008x\u0010d\u001a\u0004\u0008y\u0010fR\u0017\u0010}\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008{\u0010d\u001a\u0004\u0008|\u0010fR\u0018\u0010\u0080\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008~\u0010d\u001a\u0004\u0008\u007f\u0010fR\u001a\u0010\u0083\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010d\u001a\u0005\u0008\u0082\u0001\u0010fR\u001a\u0010\u0086\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0084\u0001\u0010d\u001a\u0005\u0008\u0085\u0001\u0010fR\u001a\u0010\u0089\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010d\u001a\u0005\u0008\u0088\u0001\u0010fR\u0019\u0010\u008b\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\r\n\u0004\u0008\u0003\u0010d\u001a\u0005\u0008\u008a\u0001\u0010fR\u001a\u0010\u008e\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008c\u0001\u0010d\u001a\u0005\u0008\u008d\u0001\u0010fR\u001a\u0010\u0091\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008f\u0001\u0010d\u001a\u0005\u0008\u0090\u0001\u0010fR\u001a\u0010\u0094\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0092\u0001\u0010d\u001a\u0005\u0008\u0093\u0001\u0010fR\u001a\u0010\u0097\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0095\u0001\u0010d\u001a\u0005\u0008\u0096\u0001\u0010fR\u001a\u0010\u009a\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0098\u0001\u0010d\u001a\u0005\u0008\u0099\u0001\u0010fR\u0019\u0010\u009c\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\r\n\u0004\u0008\u0007\u0010d\u001a\u0005\u0008\u009b\u0001\u0010fR\u001a\u0010\u009f\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009d\u0001\u0010d\u001a\u0005\u0008\u009e\u0001\u0010fR\u001a\u0010\u00a2\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a0\u0001\u0010d\u001a\u0005\u0008\u00a1\u0001\u0010fR\u001a\u0010\u00a5\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a3\u0001\u0010d\u001a\u0005\u0008\u00a4\u0001\u0010fR\u001a\u0010\u00a8\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a6\u0001\u0010d\u001a\u0005\u0008\u00a7\u0001\u0010fR\u001a\u0010\u00ab\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a9\u0001\u0010d\u001a\u0005\u0008\u00aa\u0001\u0010fR\u001a\u0010\u00ae\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ac\u0001\u0010d\u001a\u0005\u0008\u00ad\u0001\u0010fR\u001a\u0010\u00b1\u0001\u001a\u00020\u001f8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00af\u0001\u0010d\u001a\u0005\u0008\u00b0\u0001\u0010fR\u0016\u0010\u00b2\u0001\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u00b2\u0001\u0010aR\u0016\u0010\u00b3\u0001\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0007\n\u0005\u0008\u00b3\u0001\u0010aR\u0017\u0010\u00b4\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u0017\u0010\u00b6\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b5\u0001R\u0017\u0010\u00b7\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b5\u0001R\u0017\u0010\u00b8\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b5\u0001R\u0017\u0010\u00b9\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00b5\u0001R\u0017\u0010\u00ba\u0001\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u0017\u0010\u00bc\u0001\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bb\u0001R\u0017\u0010\u00bd\u0001\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00bb\u0001R\u0017\u0010\u00be\u0001\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bb\u0001R\u0017\u0010\u00bf\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00b5\u0001R\u0013\u0010\u00c1\u0001\u001a\u00020\u00048F\u00a2\u0006\u0007\u001a\u0005\u0008\u0014\u0010\u00c0\u0001R\u0014\u0010\u00c3\u0001\u001a\u00020\u00048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00c2\u0001\u0010\u00c0\u0001R\u0013\u0010\u00c5\u0001\u001a\u00020\n8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0017\u0010\u00c4\u0001R\u0012\u0010F\u001a\u00020\n8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0018\u0010\u00c4\u0001R\u0013\u0010\u00c7\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c6\u0001\u0010fR\u0013\u0010\u00c8\u0001\u001a\u00020\n8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0019\u0010\u00c4\u0001R\u0013\u0010\u00c9\u0001\u001a\u00020\n8F\u00a2\u0006\u0007\u001a\u0005\u0008\u001b\u0010\u00c4\u0001R\u0014\u0010\u00cb\u0001\u001a\u00020\u00048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ca\u0001\u0010\u00c0\u0001R\u0014\u0010\u00cd\u0001\u001a\u00020\n8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00cc\u0001\u0010\u00c4\u0001\u00a8\u0006\u00d0\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/DateTimeUtil;",
        "",
        "",
        "n",
        "",
        "b",
        "",
        "t",
        "a",
        "millisOfNow",
        "Ljava/util/Date;",
        "dateOfNow",
        "format",
        "stringOfNow",
        "Landroid/content/Context;",
        "context",
        "",
        "isSystemHour24",
        "getCurrentTimeString",
        "pattern",
        "getCurrentTime",
        "Ljava/util/Calendar;",
        "calendar",
        "getMonthBegin",
        "getMonthEnd",
        "getDayBegin",
        "date",
        "getDayEnd",
        "getCalendarDateString",
        "formatDate",
        "time",
        "Ljava/text/SimpleDateFormat;",
        "simpleDateFormat",
        "dateString",
        "timeZone",
        "parse",
        "durationMilliseconds",
        "formatDuration",
        "formatDurationHHMMSSExact",
        "forceShowHour",
        "showHourFormat",
        "noHourFormat",
        "formatDurationSecondExact",
        "formatDurationSecondRoundUp",
        "formatDurationMinuteSeconds",
        "millis",
        "appendSpace",
        "formatLeftTime",
        "o1",
        "o2",
        "compareDate",
        "laterThan",
        "hour",
        "minute",
        "second",
        "getDateTime",
        "getSimpleDateFormat",
        "year",
        "month",
        "day",
        "getCalendar",
        "c",
        "",
        "setCalendar",
        "startDate",
        "endDate",
        "",
        "getDatesRangIn",
        "countDaysRangIn",
        "monthStart",
        "monthEnd",
        "getPreMonthDate",
        "getNextMonthDate",
        "weekStart",
        "weekEnd",
        "getPreWeekDate",
        "getNextWeekDate",
        "isLaterThanToday",
        "dayTime",
        "getDayTime",
        "weekTime",
        "getWeekTime",
        "safelyGetTime",
        "getTimeStr",
        "getTimeMills",
        "rftTimeString",
        "safeMode",
        "rfcTimeToLong",
        "minuteToMs",
        "",
        "msToMinute",
        "hourToMs",
        "msToHour",
        "msToSecLong",
        "",
        "msToSecFloat",
        "FORMAT_RFC3339",
        "Ljava/lang/String;",
        "FORMAT_YYYYMMDD",
        "FORMAT_YYYYMMDD_HHMMSS",
        "Ljava/text/SimpleDateFormat;",
        "getDATE_FORMAT_YMDHMS",
        "()Ljava/text/SimpleDateFormat;",
        "DATE_FORMAT_YMDHMS",
        "getDATE_FORMAT_YYYYMMDD_HHMMSS",
        "DATE_FORMAT_YYYYMMDD_HHMMSS",
        "getDATE_FORMAT_YYYYMMDD_HH_MM_SS",
        "DATE_FORMAT_YYYYMMDD_HH_MM_SS",
        "d",
        "getDATE_FORMAT_YYYYMMDD_HHMMSS_2",
        "DATE_FORMAT_YYYYMMDD_HHMMSS_2",
        "e",
        "getDATE_FORMAT_YYYYMMDD_HHMMSS_3",
        "DATE_FORMAT_YYYYMMDD_HHMMSS_3",
        "f",
        "getDATE_FORMAT_YYYYMMDD_HH_MM",
        "DATE_FORMAT_YYYYMMDD_HH_MM",
        "g",
        "getDATE_FORMAT_YYYYMMDD_HHMM",
        "DATE_FORMAT_YYYYMMDD_HHMM",
        "h",
        "getDATE_FORMAT_YYYYMMDD_HHMM_2",
        "DATE_FORMAT_YYYYMMDD_HHMM_2",
        "i",
        "getDATE_FORMAT_YYYYMMDD",
        "DATE_FORMAT_YYYYMMDD",
        "j",
        "getDATE_FORMAT_YYYYMMDD_2",
        "DATE_FORMAT_YYYYMMDD_2",
        "k",
        "getDATE_FORMAT_YYYYMMDD_3",
        "DATE_FORMAT_YYYYMMDD_3",
        "l",
        "getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z",
        "DATE_FORMAT_YYYYMMDD_T_HHMMSS_Z",
        "m",
        "getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME",
        "DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME",
        "getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE",
        "DATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE",
        "o",
        "getDATE_FORMAT_YYYY_MM_DD_HHMMSS",
        "DATE_FORMAT_YYYY_MM_DD_HHMMSS",
        "p",
        "getDATE_FORMAT_MMDD",
        "DATE_FORMAT_MMDD",
        "q",
        "getDATE_FORMAT_HH",
        "DATE_FORMAT_HH",
        "r",
        "getDATE_FORMAT_HHMM",
        "DATE_FORMAT_HHMM",
        "s",
        "getDATE_FORMAT_DD",
        "DATE_FORMAT_DD",
        "getDATE_FORMAT_WEEK",
        "DATE_FORMAT_WEEK",
        "u",
        "getDATE_FORMAT_HHMM_12",
        "DATE_FORMAT_HHMM_12",
        "v",
        "getDATE_FORMAT_MM_SS",
        "DATE_FORMAT_MM_SS",
        "w",
        "getDATE_FORMAT_FILE_NAME",
        "DATE_FORMAT_FILE_NAME",
        "x",
        "getDATE_FORMAT_HH_12",
        "DATE_FORMAT_HH_12",
        "y",
        "getDATE_FORMAT_MM",
        "DATE_FORMAT_MM",
        "z",
        "getDATE_FORMAT_MMDD_HHMMSS_SSS",
        "DATE_FORMAT_MMDD_HHMMSS_SSS",
        "A",
        "getDATE_FORMAT_RFC3339",
        "DATE_FORMAT_RFC3339",
        "HOURS_12",
        "HOURS_24",
        "WEEK_DAYS",
        "I",
        "HALF_SECOND_MILLS",
        "ONE_SECOND_TIME_IN_MILL",
        "ONE_HOUR_TIME_IN_MILL",
        "ONE_MINUTE_TIME_IN_MILL",
        "ONE_DAY_TIME_IN_MILL",
        "J",
        "ONE_WEEK_TIME_IN_MILL",
        "ONE_MONTH_TIME_IN_MILL",
        "ONE_YEAR_TIME_IN_MILL",
        "THIRD_SECOND_TIME_IN_MILL",
        "()Ljava/lang/String;",
        "currentTime",
        "getCurrentTime24Format",
        "currentTime24Format",
        "()Ljava/util/Date;",
        "monthBegin",
        "getWeekDateFormat",
        "weekDateFormat",
        "dayBegin",
        "dayEnd",
        "getBootUpTime",
        "bootUpTime",
        "getNowDate",
        "nowDate",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final A:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORMAT_RFC3339:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORMAT_YYYYMMDD:Ljava/lang/String; = "yyyy-MM-dd"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORMAT_YYYYMMDD_HHMMSS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HALF_SECOND_MILLS:I = 0x1f4

.field public static final HOURS_12:Ljava/lang/String; = "12"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HOURS_24:Ljava/lang/String; = "24"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ONE_DAY_TIME_IN_MILL:J = 0x5265c00L

.field public static final ONE_HOUR_TIME_IN_MILL:I = 0x36ee80

.field public static final ONE_MINUTE_TIME_IN_MILL:I = 0xea60

.field public static final ONE_MONTH_TIME_IN_MILL:J = 0x9a7ec800L

.field public static final ONE_SECOND_TIME_IN_MILL:I = 0x3e8

.field public static final ONE_WEEK_TIME_IN_MILL:J = 0x240c8400L

.field public static final ONE_YEAR_TIME_IN_MILL:J = 0x73df16000L

.field public static final THIRD_SECOND_TIME_IN_MILL:I = 0xbb8

.field public static final WEEK_DAYS:I = 0x7

.field public static final a:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final x:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    const-string v1, "yyyyMMddHHmmss"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->a:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->b:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH_mm_ss"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->c:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->d:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->e:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH_mm"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->f:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->g:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->h:Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->i:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->j:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->k:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->l:Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH mm ss"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->m:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->n:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->o:Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->p:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->q:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->r:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->s:Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->t:Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->u:Ljava/text/SimpleDateFormat;

    const-string v2, "mm_ss"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->v:Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->w:Ljava/text/SimpleDateFormat;

    const-string v2, "hh"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->x:Ljava/text/SimpleDateFormat;

    const-string v2, "mm"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->y:Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->z:Ljava/text/SimpleDateFormat;

    sput-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->A:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic formatDuration$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p3, "%02d:%02d:%02d"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatDurationSecondExact$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    const-string p4, "%d:%02d:%02d"

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_2

    const-string p5, "%02d:%02d"

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact(JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    const-string p4, "%02d:%02d:%02d"

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_2

    const-string p5, "%02d:%02d"

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp(JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatLeftTime$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatLeftTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTimeMills$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;IIIILjava/lang/Object;)J
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getTimeMills(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic parse$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->parse(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic rfcTimeToLong$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ZILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->rfcTimeToLong(Ljava/lang/String;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic stringOfNow$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->stringOfNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long v2, p1, v0

    long-to-int v2, v2

    div-long v3, p1, v0

    rem-long/2addr v3, v0

    long-to-int v0, v3

    const/16 v1, 0xe10

    int-to-long v3, v1

    div-long/2addr p1, v3

    long-to-int p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final compareDate(Ljava/util/Date;Ljava/util/Date;)I
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final countDaysRangIn(Ljava/util/Date;Ljava/util/Date;)I
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "startDate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "endDate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {p0, v3, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 p1, 0x5

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final dateOfNow()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method public final format(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 0
    .param p3    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "format"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final formatDate(J)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "simpleDateFormat"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "format"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x36ee80

    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    div-long v4, p1, v0

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(locale, format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final formatDurationHHMMSSExact(J)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/32 v0, 0x36ee80

    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    div-long v4, p1, v0

    rem-long/2addr p1, v0

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "00.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d:%02d:"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(locale, format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationMinuteSeconds(J)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->second(J)I

    move-result p0

    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(locale, format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final formatDurationSecondExact(J)Ljava/lang/String;
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondExact(JZ)Ljava/lang/String;
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondExact(JZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "showHourFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondExact(JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "showHourFormat"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noHourFormat"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x3e8

    int-to-long v0, p0

    .line 4
    div-long/2addr p1, v0

    const/16 p0, 0xe10

    int-to-long v0, p0

    .line 5
    div-long v2, p1, v0

    .line 6
    rem-long/2addr p1, v0

    const/16 p0, 0x3c

    int-to-long v0, p0

    div-long v4, p1, v0

    .line 7
    rem-long/2addr p1, v0

    const-string p0, "format(locale, format, *args)"

    if-nez p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p5, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public final formatDurationSecondRoundUp(J)Ljava/lang/String;
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondRoundUp(JZ)Ljava/lang/String;
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondRoundUp(JZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "showHourFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatDurationSecondRoundUp(JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "showHourFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noHourFormat"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->second(J)I

    move-result p0

    .line 5
    div-int/lit16 p1, p0, 0xe10

    .line 6
    rem-int/lit16 p0, p0, 0xe10

    div-int/lit8 p2, p0, 0x3c

    .line 7
    rem-int/lit8 p0, p0, 0x3c

    const-string v0, "format(locale, format, *args)"

    if-nez p3, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final formatLeftTime(JZ)Ljava/lang/String;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v0, p3

    const-wide v1, 0x73df16000L

    div-long v3, p1, v1

    rem-long v1, p1, v1

    const-wide v5, 0x9a7ec800L

    div-long/2addr v1, v5

    rem-long v5, p1, v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    rem-long v7, p1, v7

    const v9, 0x36ee80

    int-to-long v9, v9

    div-long/2addr v7, v9

    rem-long v9, p1, v9

    const v11, 0xea60

    int-to-long v11, v11

    div-long/2addr v9, v11

    rem-long v11, p1, v11

    const/16 v13, 0x3e8

    int-to-long v13, v13

    div-long/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v14, 0x0

    cmp-long v16, v3, v14

    const-string v14, " "

    const-string v15, "append(...)"

    if-lez v16, :cond_0

    move-wide/from16 v16, v11

    sget-object v11, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v12, Lcom/onyx/android/sdk/base/R$string;->unit_year:I

    invoke-virtual {v11, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$1;

    invoke-direct {v12, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$1;-><init>(Z)V

    invoke-static {v13, v14, v12}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$2;

    invoke-direct {v11, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$2;-><init>(Z)V

    invoke-static {v12, v14, v11}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v11

    :goto_0
    const-wide/16 v11, 0x0

    add-long/2addr v3, v11

    cmp-long v18, v3, v11

    if-gtz v18, :cond_1

    cmp-long v18, v1, v11

    if-lez v18, :cond_2

    :cond_1
    sget-object v11, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v12, Lcom/onyx/android/sdk/base/R$string;->unit_month:I

    invoke-virtual {v11, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$3;

    invoke-direct {v12, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$3;-><init>(Z)V

    invoke-static {v13, v14, v12}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$4;

    invoke-direct {v11, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$4;-><init>(Z)V

    invoke-static {v12, v14, v11}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    :cond_2
    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v11, v3, v1

    if-gtz v11, :cond_3

    cmp-long v11, v5, v1

    if-lez v11, :cond_4

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/base/R$string;->unit_day:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$5;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$5;-><init>(Z)V

    invoke-static {v13, v14, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$6;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$6;-><init>(Z)V

    invoke-static {v2, v14, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    :cond_4
    add-long/2addr v3, v5

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_5

    cmp-long v5, v7, v1

    if-lez v5, :cond_6

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/base/R$string;->unit_hour:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$7;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$7;-><init>(Z)V

    invoke-static {v13, v14, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$8;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$8;-><init>(Z)V

    invoke-static {v2, v14, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    :cond_6
    add-long/2addr v3, v7

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_7

    cmp-long v5, v9, v1

    if-lez v5, :cond_8

    :cond_7
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/base/R$string;->unit_minute:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$9;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$9;-><init>(Z)V

    invoke-static {v13, v14, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$10;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$10;-><init>(Z)V

    invoke-static {v2, v14, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    :cond_8
    add-long/2addr v3, v9

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_a

    cmp-long v5, v16, v1

    if-lez v5, :cond_9

    goto :goto_1

    :cond_9
    move-wide/from16 v11, v16

    goto :goto_2

    :cond_a
    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/base/R$string;->unit_second:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v11, v16

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$11;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$11;-><init>(Z)V

    invoke-static {v13, v14, v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$12;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil$formatLeftTime$12;-><init>(Z)V

    invoke-static {v2, v14, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->appendIf(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/StringBuilder;

    :goto_2
    add-long/2addr v3, v11

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_b

    const-string v0, "0"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBootUpTime()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCalendar(IIIII)Ljava/util/Calendar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCalendarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "calendar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    const/16 v3, 0xa

    if-ge p0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "yyyy-MM-dd hh:mm:ss:SSS"

    .line 1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTime24Format()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDATE_FORMAT_DD()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->s:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_FILE_NAME()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->w:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_HH()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->q:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_HHMM()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->r:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_HHMM_12()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->u:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_HH_12()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->x:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_MM()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->y:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_MMDD()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->p:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_MMDD_HHMMSS_SSS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->z:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_MM_SS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->v:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_RFC3339()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->A:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_WEEK()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->t:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YMDHMS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->a:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->i:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_2()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->j:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_3()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->k:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMM()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->g:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMMSS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->b:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMMSS_2()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->d:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMMSS_3()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->e:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_AUDIO_FILE()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->n:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMMSS_FOR_FILE_NAME()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->m:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HHMM_2()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->h:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HH_MM()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->f:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_HH_MM_SS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->c:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->l:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDATE_FORMAT_YYYY_MM_DD_HHMMSS()Ljava/text/SimpleDateFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->o:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final getDateTime(Ljava/util/Date;)J
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final getDatesRangIn(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "startDate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "endDate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {p0, v3, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    const-string v0, "getTime(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x5

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getDayBegin()Ljava/util/Date;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getDayBegin(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 7
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "calendar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDayBegin(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getDayEnd()Ljava/util/Date;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayEnd(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getDayEnd(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 7
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "calendar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDayEnd(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayEnd(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getDayTime(J)J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMonthBegin()Ljava/util/Date;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getMonthBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getMonthBegin(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getMonthEnd()Ljava/util/Date;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getMonthEnd(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getMonthEnd(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayEnd(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getNextMonthDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNextWeekDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNowDate()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method public final getPreMonthDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPreWeekDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v0, -0x7

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0
.end method

.method public final getTimeMills(III)J
    .locals 4

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    int-to-long p0, p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v2, p2

    mul-long/2addr v2, v0

    add-long/2addr p0, v2

    int-to-long p2, p3

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public final getTimeStr(II)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(locale, format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getWeekDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0
.end method

.method public final getWeekTime(J)J
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final hour(J)I
    .locals 2

    const/16 p0, 0xe10

    int-to-long v0, p0

    div-long/2addr p1, v0

    const/16 p0, 0x3e8

    int-to-long v0, p0

    div-long/2addr p1, v0

    long-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final hourToMs(J)J
    .locals 2

    const p0, 0x36ee80

    int-to-long v0, p0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public final isLaterThanToday(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dateString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->j:Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->parse$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;ILjava/lang/Object;)J

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDayBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->laterThan(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public final isSystemHour24(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "time_12_24"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "24"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final laterThan(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final millisOfNow()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final minute(J)I
    .locals 0

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    const/16 p1, 0x3c

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final minuteToMs(I)J
    .locals 2

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->minuteToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final minuteToMs(J)J
    .locals 2

    .line 1
    const p0, 0xea60

    int-to-long v0, p0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public final monthEnd(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getMonthEnd(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final monthStart(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getMonthBegin(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final msToHour(J)D
    .locals 2

    long-to-double p0, p1

    const p2, 0x36ee80

    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public final msToMinute(J)D
    .locals 2

    long-to-double p0, p1

    const p2, 0xea60

    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public final msToSecFloat(J)F
    .locals 0

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public final msToSecLong(J)J
    .locals 0

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-long p0, p0

    return-wide p0
.end method

.method public final parse(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "dateString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simpleDateFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->parse$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;ILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final parse(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string p0, "dateString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "simpleDateFormat"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_1

    :cond_1
    const-wide/16 p0, 0x0

    :goto_1
    return-wide p0
.end method

.method public final rfcTimeToLong(Ljava/lang/String;Z)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rftTimeString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p2, "GMT"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->A:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public final safelyGetTime(Ljava/util/Date;)J
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final second(J)I
    .locals 0

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final setCalendar(Ljava/util/Calendar;II)V
    .locals 0
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "c"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0xb

    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final stringOfNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->dateOfNow()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final weekEnd(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final weekStart(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "date"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string p1, "getTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
