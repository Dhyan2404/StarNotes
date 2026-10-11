.class public final synthetic Lcom/sunia/HTREnginev2/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ddf/EscherPropertyTypes;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i3;->e:Lorg/apache/poi/ddf/EscherPropertyTypes;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i3;->e:Lorg/apache/poi/ddf/EscherPropertyTypes;

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->a(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method
