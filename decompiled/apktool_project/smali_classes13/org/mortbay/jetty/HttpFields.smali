.class public Lorg/mortbay/jetty/HttpFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/HttpFields$Field;
    }
.end annotation


# static fields
.field public static final __01Jan1970:Ljava/lang/String;

.field public static final __01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final __dateCache:Lorg/mortbay/io/BufferDateCache;

.field public static final __separators:Ljava/lang/String; = ", \t"

.field public static c:[Ljava/lang/String;

.field public static d:[Ljava/lang/String;

.field public static e:Ljava/util/TimeZone;

.field public static final f:[Ljava/lang/String;

.field public static g:I

.field public static h:[Ljava/text/SimpleDateFormat;

.field public static i:Ljava/lang/Float;

.field public static j:Ljava/lang/Float;

.field public static k:Lorg/mortbay/util/StringMap;


# instance fields
.field protected _bufferMap:Ljava/util/HashMap;

.field protected _dateReceive:[Ljava/text/SimpleDateFormat;

.field protected _fields:Ljava/util/ArrayList;

.field protected _revision:I

.field public a:Ljava/lang/StringBuffer;

.field public b:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    const-string v0, "Sat"

    const-string v1, "Sun"

    const-string v2, "Mon"

    const-string v3, "Tue"

    const-string v4, "Wed"

    const-string v5, "Thu"

    const-string v6, "Fri"

    const-string v7, "Sat"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->c:[Ljava/lang/String;

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    const-string v12, "Dec"

    const-string v13, "Jan"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->d:[Ljava/lang/String;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    new-instance v1, Lorg/mortbay/io/BufferDateCache;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lorg/mortbay/io/BufferDateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v5, "EEE, dd-MMM-yy HH:mm:ss"

    const-string v6, "EEE MMM dd HH:mm:ss yyyy"

    const-string v7, "EEE, dd MMM yyyy HH:mm:ss"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss zzz"

    const-string v9, "EEE dd MMM yyyy HH:mm:ss"

    const-string v10, "EEE MMM dd yyyy HH:mm:ss zzz"

    const-string v11, "EEE MMM dd yyyy HH:mm:ss"

    const-string v12, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    const-string v13, "EEE MMM-dd-yyyy HH:mm:ss"

    const-string v14, "dd MMM yyyy HH:mm:ss zzz"

    const-string v15, "dd MMM yyyy HH:mm:ss"

    const-string v16, "dd-MMM-yy HH:mm:ss zzz"

    const-string v17, "dd-MMM-yy HH:mm:ss"

    const-string v18, "MMM dd HH:mm:ss yyyy zzz"

    const-string v19, "MMM dd HH:mm:ss yyyy"

    const-string v20, "EEE MMM dd HH:mm:ss yyyy zzz"

    const-string v21, "EEE, MMM dd HH:mm:ss yyyy zzz"

    const-string v22, "EEE, MMM dd HH:mm:ss yyyy"

    const-string v23, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v24, "EEE dd-MMM-yy HH:mm:ss zzz"

    const-string v25, "EEE dd-MMM-yy HH:mm:ss"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/HttpFields;->f:[Ljava/lang/String;

    const/4 v3, 0x3

    sput v3, Lorg/mortbay/jetty/HttpFields;->g:I

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    array-length v0, v2

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lorg/mortbay/jetty/HttpFields;->g:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v1, v0

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->__01Jan1970:Ljava/lang/String;

    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/mortbay/jetty/HttpFields;->__01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v0, Ljava/lang/Float;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const-string v2, "0.0"

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    new-instance v0, Lorg/mortbay/util/StringMap;

    invoke-direct {v0}, Lorg/mortbay/util/StringMap;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    const/4 v3, 0x0

    sget-object v4, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    invoke-virtual {v0, v3, v4}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    const-string v1, "1"

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.9"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.8"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.7"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.66"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.6"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.5"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.4"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.33"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.3"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.2"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    new-instance v1, Ljava/lang/Float;

    const-string v3, "0.1"

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    const-string v1, "0"

    sget-object v3, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    invoke-virtual {v0, v2, v1}, Lorg/mortbay/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static formatDate(JZ)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    invoke-static {v0, v1, p2}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/StringBuffer;JZ)Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    invoke-static {p0, v0, p3}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7
    invoke-static {v0, p0, p1}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V
    .locals 9

    const/4 v0, 0x7

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 16
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 17
    div-int/lit8 v4, v3, 0x64

    .line 18
    rem-int/lit8 v3, v3, 0x64

    .line 19
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x15180

    rem-long/2addr v5, v7

    long-to-int p1, v5

    .line 20
    rem-int/lit8 v5, p1, 0x3c

    .line 21
    div-int/lit8 p1, p1, 0x3c

    .line 22
    rem-int/lit8 v6, p1, 0x3c

    .line 23
    div-int/lit8 p1, p1, 0x3c

    .line 24
    sget-object v7, Lorg/mortbay/jetty/HttpFields;->c:[Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-static {p0, v1}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    if-eqz p2, :cond_0

    const/16 p2, 0x2d

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    sget-object v1, Lorg/mortbay/jetty/HttpFields;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    invoke-static {p0, v4}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 32
    invoke-static {p0, v3}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    sget-object p2, Lorg/mortbay/jetty/HttpFields;->d:[Ljava/lang/String;

    aget-object p2, p2, v2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    invoke-static {p0, v4}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 37
    invoke-static {p0, v3}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 38
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    invoke-static {p0, p1}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    const/16 p1, 0x3a

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    invoke-static {p0, v6}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    invoke-static {p0, v5}, Lorg/mortbay/util/StringUtil;->append2digits(Ljava/lang/StringBuffer;I)V

    const-string p1, " GMT"

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getQuality(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    return-object p0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Lorg/mortbay/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, v0}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    const-string p0, "q"

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->k:Lorg/mortbay/util/StringMap;

    invoke-virtual {v0, p0}, Lorg/mortbay/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lorg/mortbay/jetty/HttpFields;->i:Ljava/lang/Float;

    return-object p0
.end method

.method public static qualityList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 8

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/jetty/HttpFields;->getQuality(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    invoke-static {v0, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    return-object v0

    :cond_3
    invoke-static {v1, p0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->j:Ljava/lang/Float;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v3, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v2, v6}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v6, "= "

    invoke-direct {v5, v4, v6}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_1
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/HttpFields$Field;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_1
    move-object v7, v0

    if-eqz p1, :cond_2

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mortbay/jetty/HttpFields$Field;->h(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/mortbay/jetty/HttpFields$Field;

    iget v5, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/c;)V

    if-eqz v7, :cond_3

    invoke-static {p1, v7}, Lorg/mortbay/jetty/HttpFields$Field;->b(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v7, p1}, Lorg/mortbay/jetty/HttpFields$Field;->g(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields$Field;->o()Lorg/mortbay/io/Buffer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    const-wide/16 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public add(Lorg/mortbay/jetty/HttpFields;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 9
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addDateField(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    invoke-static {v0, v2, v1}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public addLongField(Ljava/lang/String;J)V
    .locals 1

    .line 1
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public addLongField(Lorg/mortbay/io/Buffer;J)V
    .locals 1

    .line 4
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->a(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public addSetCookie(Ljavax/servlet/http/Cookie;)V
    .locals 8

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getVersion()I

    move-result v2

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    monitor-enter v3

    :try_start_0
    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v3, v1}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    if-lez v2, :cond_1

    const-string v0, ";Version="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ";Comment="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ";Path="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, ";Domain="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getMaxAge()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_7

    if-nez v2, :cond_6

    const-string v2, ";Expires="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v4, :cond_5

    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v4, v0

    const/4 v0, 0x1

    invoke-static {v3, v4, v5, v0}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;JZ)Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v2, ";Max-Age="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    if-lez v2, :cond_8

    const-string v0, ";Discard"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ";Secure"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    instance-of p1, p1, Lorg/mortbay/jetty/HttpOnlyCookie;

    if-eqz p1, :cond_a

    const-string p1, ";HttpOnly"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->EXPIRES_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->__01Jan1970_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad cookie name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 1

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/HttpFields$Field;

    return-object p0
.end method

.method public final c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/HttpFields$Field;

    return-object p0
.end method

.method public clear()V
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    const v1, 0xf4240

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->i(Lorg/mortbay/jetty/HttpFields$Field;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result p1

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsKey(Lorg/mortbay/io/Buffer;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result p1

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->o()Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->l(Lorg/mortbay/jetty/HttpFields$Field;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->e(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDateField(Ljava/lang/String;)J
    .locals 8

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_a

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->j(Lorg/mortbay/jetty/HttpFields$Field;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->j(Lorg/mortbay/jetty/HttpFields$Field;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->e(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v3, Lorg/mortbay/jetty/HttpFields;->g:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v4, v3, v1

    if-nez v4, :cond_3

    sget-object v4, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    aput-object v4, v3, v1

    :cond_3
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lorg/mortbay/jetty/HttpFields$Field;->k(Lorg/mortbay/jetty/HttpFields$Field;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v1, " GMT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_1
    sget v3, Lorg/mortbay/jetty/HttpFields;->g:I

    if-ge v1, v3, :cond_5

    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lorg/mortbay/jetty/HttpFields$Field;->k(Lorg/mortbay/jetty/HttpFields$Field;J)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v3, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    monitor-enter v3

    :try_start_2
    sget v1, Lorg/mortbay/jetty/HttpFields;->g:I

    :goto_2
    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v5, v4

    if-ge v1, v5, :cond_8

    aget-object v4, v4, v1

    if-nez v4, :cond_7

    sget-object v4, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    aget-object v5, v4, v1

    if-nez v5, :cond_6

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lorg/mortbay/jetty/HttpFields;->f:[Ljava/lang/String;

    aget-object v6, v6, v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v4, v1

    sget-object v4, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v1

    sget-object v5, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_6
    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    sget-object v5, Lorg/mortbay/jetty/HttpFields;->h:[Ljava/text/SimpleDateFormat;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lorg/mortbay/jetty/HttpFields$Field;->k(Lorg/mortbay/jetty/HttpFields$Field;J)J

    move-result-wide p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    return-wide p0

    :catch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const-string v1, " GMT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v4, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v0, v4, :cond_9

    :try_start_5
    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lorg/mortbay/jetty/HttpFields$Field;->k(Lorg/mortbay/jetty/HttpFields$Field;J)J

    move-result-wide p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3

    return-wide p0

    :catch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Cannot convert date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :cond_a
    :goto_4
    return-wide v0
.end method

.method public getFieldNames()Ljava/util/Enumeration;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    new-instance v1, Lorg/mortbay/jetty/c;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/c;-><init>(Lorg/mortbay/jetty/HttpFields;I)V

    return-object v1
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    new-instance v1, Lorg/mortbay/jetty/d;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/d;-><init>(Lorg/mortbay/jetty/HttpFields;I)V

    return-object v1
.end method

.method public getLongField(Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getLongField(Lorg/mortbay/io/Buffer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v0, p0, :cond_0

    .line 5
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->e(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->b(Ljava/lang/String;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 3
    new-instance v1, Lorg/mortbay/jetty/e;

    invoke-direct {v1, p0, p1, v0}, Lorg/mortbay/jetty/e;-><init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V

    return-object v1
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lorg/mortbay/jetty/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/jetty/g;-><init>(Lorg/mortbay/jetty/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V

    return-object v0
.end method

.method public getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->c(Lorg/mortbay/io/Buffer;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    .line 6
    new-instance v1, Lorg/mortbay/jetty/f;

    invoke-direct {v1, p0, p1, v0}, Lorg/mortbay/jetty/f;-><init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-wide/16 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    :cond_3
    return-void

    .line 28
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v1, :cond_0

    .line 31
    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/HttpFields$Field;->put(Lorg/mortbay/io/Buffer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Lorg/mortbay/io/BufferUtil;->putCRLF(Lorg/mortbay/io/Buffer;)V

    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V
    .locals 2

    .line 4
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    const-wide/16 v0, -0x1

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 9
    iget-object p1, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz p1, :cond_3

    .line 10
    iget p0, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    invoke-static {p1, p2, p3, p4, p0}, Lorg/mortbay/jetty/HttpFields$Field;->h(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V

    .line 11
    invoke-static {p1}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 12
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields$Field;->i(Lorg/mortbay/jetty/HttpFields$Field;)V

    .line 13
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance p1, Lorg/mortbay/jetty/HttpFields$Field;

    iget v5, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/c;)V

    .line 15
    iget-object p2, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields$Field;->o()Lorg/mortbay/io/Buffer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDateField(Ljava/lang/String;J)V
    .locals 1

    .line 9
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public putDateField(Lorg/mortbay/io/Buffer;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    .line 3
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/mortbay/jetty/HttpFields;->e:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->b:Ljava/util/Calendar;

    invoke-static {v0, v2, v1}, Lorg/mortbay/jetty/HttpFields;->formatDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;Z)V

    .line 7
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public putLongField(Ljava/lang/String;J)V
    .locals 1

    .line 3
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 4
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public putLongField(Lorg/mortbay/io/Buffer;J)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Lorg/mortbay/io/BufferUtil;->toBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    return-void
.end method

.method public remove(Lorg/mortbay/io/Buffer;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mortbay/jetty/HttpFields;->_bufferMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz p0, :cond_0

    :goto_0
    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields$Field;->i(Lorg/mortbay/jetty/HttpFields$Field;)V

    .line 4
    invoke-static {p0}, Lorg/mortbay/jetty/HttpFields$Field;->f(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\r\n"

    if-ge v1, v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/mortbay/jetty/HttpFields$Field;->c(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v4

    iget v5, p0, Lorg/mortbay/jetty/HttpFields;->_revision:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
