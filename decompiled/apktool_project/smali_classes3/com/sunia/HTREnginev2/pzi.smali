.class public final synthetic Lcom/sunia/HTREnginev2/pzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/text/util/LinkifyCompat$b;

    check-cast p2, Landroidx/core/text/util/LinkifyCompat$b;

    invoke-static {p1, p2}, Landroidx/core/text/util/LinkifyCompat;->a(Landroidx/core/text/util/LinkifyCompat$b;Landroidx/core/text/util/LinkifyCompat$b;)I

    move-result p0

    return p0
.end method
