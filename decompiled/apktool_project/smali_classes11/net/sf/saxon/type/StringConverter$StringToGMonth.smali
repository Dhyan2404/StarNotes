.class public Lnet/sf/saxon/type/StringConverter$StringToGMonth;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToGMonth"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonth;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToGMonth;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToGMonth;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToGMonth;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonth;

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

    invoke-static {p1}, Lnet/sf/saxon/value/GMonthValue;->makeGMonthValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method
