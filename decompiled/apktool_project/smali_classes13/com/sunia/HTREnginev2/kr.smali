.class public final synthetic Lcom/sunia/HTREnginev2/kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kr;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kr;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kr;->e:Ljava/util/Map;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kr;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
