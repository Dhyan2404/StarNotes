.class public Lnet/sf/saxon/functions/TreatFn$OneOrMore;
.super Lnet/sf/saxon/functions/TreatFn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/TreatFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneOrMore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/TreatFn;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCodeForTypeErrors()Ljava/lang/String;
    .locals 0

    const-string p0, "FORG0004"

    return-object p0
.end method

.method public getRequiredCardinality()I
    .locals 0

    const p0, 0xc000

    return p0
.end method
