.class public Lorg/apache/logging/log4j/util/PropertySource$Comparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/PropertySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/logging/log4j/util/PropertySource;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/logging/log4j/util/PropertySource;

    check-cast p2, Lorg/apache/logging/log4j/util/PropertySource;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/util/PropertySource$Comparator;->compare(Lorg/apache/logging/log4j/util/PropertySource;Lorg/apache/logging/log4j/util/PropertySource;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/logging/log4j/util/PropertySource;Lorg/apache/logging/log4j/util/PropertySource;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/logging/log4j/util/PropertySource;

    invoke-interface {p1}, Lorg/apache/logging/log4j/util/PropertySource;->getPriority()I

    move-result p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/logging/log4j/util/PropertySource;

    invoke-interface {p2}, Lorg/apache/logging/log4j/util/PropertySource;->getPriority()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
