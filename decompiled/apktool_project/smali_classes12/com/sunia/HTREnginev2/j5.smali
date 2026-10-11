.class public final synthetic Lcom/sunia/HTREnginev2/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/poi/convert/AbstractWordConverter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/convert/AbstractWordConverter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j5;->e:Lorg/apache/poi/convert/AbstractWordConverter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j5;->e:Lorg/apache/poi/convert/AbstractWordConverter;

    invoke-static {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->f(Lorg/apache/poi/convert/AbstractWordConverter;)V

    return-void
.end method
