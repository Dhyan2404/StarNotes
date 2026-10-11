.class public Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToGMonthDay"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/value/GMonthDayValue;->makeGMonthDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method
