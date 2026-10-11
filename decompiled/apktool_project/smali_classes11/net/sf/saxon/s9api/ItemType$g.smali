.class public final Lnet/sf/saxon/s9api/ItemType$g;
.super Lnet/sf/saxon/s9api/ItemType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/ItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/ItemType;-><init>(Lnet/sf/saxon/type/ItemType;)V

    return-void
.end method


# virtual methods
.method public getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/s9api/ItemType;->a()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public subsumes(Lnet/sf/saxon/s9api/ItemType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
