.class public final synthetic Lcom/sunia/HTREnginev2/qrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qrn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qrn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->g0(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method
