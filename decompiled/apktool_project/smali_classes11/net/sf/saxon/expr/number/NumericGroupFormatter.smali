.class public abstract Lnet/sf/saxon/expr/number/NumericGroupFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected adjustedPicture:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAdjustedPicture()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->adjustedPicture:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public abstract getSeparator()Ljava/lang/String;
.end method
