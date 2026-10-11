.class public Lcom/sunia/HTREnginev2/oce$a;
.super Ljava/lang/InheritableThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/oce;->c()Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lorg/apache/logging/log4j/util/StringMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/oce;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/oce;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oce$a;->a:Lcom/sunia/HTREnginev2/oce;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parentValue"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/oce$a;->a:Lcom/sunia/HTREnginev2/oce;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oce;->b(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/util/StringMap;->freeze()V

    return-object p0
.end method

.method public bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parentValue"
        }
    .end annotation

    check-cast p1, Lorg/apache/logging/log4j/util/StringMap;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oce$a;->a(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object p0

    return-object p0
.end method
