.class public final synthetic Lcom/sunia/HTREnginev2/hrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hrn;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hrn;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->g0(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
