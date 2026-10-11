.class public final synthetic Lcom/sunia/HTREnginev2/uo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uo;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uo;->f:[Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uo;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uo;->f:[Ljava/lang/reflect/Method;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->e(Ljava/lang/String;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method
