.class public final synthetic Lcom/sunia/HTREnginev2/ghf;
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

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)I

    move-result p0

    return p0
.end method
