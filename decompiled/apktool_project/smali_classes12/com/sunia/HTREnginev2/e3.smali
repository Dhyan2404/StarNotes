.class public final synthetic Lcom/sunia/HTREnginev2/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ddf/EscherProperty;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e3;->e:Lorg/apache/poi/ddf/EscherProperty;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e3;->e:Lorg/apache/poi/ddf/EscherProperty;

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->c(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method
