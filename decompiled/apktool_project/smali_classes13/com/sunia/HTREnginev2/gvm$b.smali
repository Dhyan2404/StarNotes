.class public final Lcom/sunia/HTREnginev2/gvm$b;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/gvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/gvm$a;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gvm$a;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvm$b;->a:Lcom/sunia/HTREnginev2/gvm$a;

    return-void
.end method
