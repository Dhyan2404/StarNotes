.class public Lnet/sf/saxon/om/EnumSetTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static except(Ljava/util/EnumSet;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Enum<",
            "TP;>;>(",
            "Ljava/util/EnumSet<",
            "TP;>;",
            "Ljava/util/EnumSet<",
            "TP;>;)",
            "Ljava/util/EnumSet<",
            "TP;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static intersect(Ljava/util/EnumSet;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Enum<",
            "TP;>;>(",
            "Ljava/util/EnumSet<",
            "TP;>;",
            "Ljava/util/EnumSet<",
            "TP;>;)",
            "Ljava/util/EnumSet<",
            "TP;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static union(Ljava/util/EnumSet;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Enum<",
            "TP;>;>(",
            "Ljava/util/EnumSet<",
            "TP;>;",
            "Ljava/util/EnumSet<",
            "TP;>;)",
            "Ljava/util/EnumSet<",
            "TP;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
