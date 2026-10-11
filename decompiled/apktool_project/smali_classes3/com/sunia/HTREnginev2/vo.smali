.class public final synthetic Lcom/sunia/HTREnginev2/vo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic g:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vo;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vo;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vo;->g:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vo;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vo;->g:Ljava/lang/reflect/Method;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->d(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method
