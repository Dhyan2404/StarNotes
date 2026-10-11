.class public final synthetic Lcom/sunia/HTREnginev2/crn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/crn;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/crn;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->M(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V

    return-void
.end method
