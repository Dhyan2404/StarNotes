.class public final synthetic Lcom/sunia/HTREnginev2/zl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/input/BOMInputStream;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/BOMInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zl;->e:Lonyx/org/apache/commons/io/input/BOMInputStream;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zl;->e:Lonyx/org/apache/commons/io/input/BOMInputStream;

    check-cast p1, Lonyx/org/apache/commons/io/ByteOrderMark;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/input/BOMInputStream;->f(Lonyx/org/apache/commons/io/input/BOMInputStream;Lonyx/org/apache/commons/io/ByteOrderMark;)Z

    move-result p0

    return p0
.end method
