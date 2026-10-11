.class public final synthetic Lcom/sunia/HTREnginev2/to;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Class;

.field public final synthetic h:C

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:[Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/to;->e:I

    iput p2, p0, Lcom/sunia/HTREnginev2/to;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/to;->g:Ljava/lang/Class;

    iput-char p4, p0, Lcom/sunia/HTREnginev2/to;->h:C

    iput-object p5, p0, Lcom/sunia/HTREnginev2/to;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/to;->j:[Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/sunia/HTREnginev2/to;->e:I

    iget v1, p0, Lcom/sunia/HTREnginev2/to;->f:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/to;->g:Ljava/lang/Class;

    iget-char v3, p0, Lcom/sunia/HTREnginev2/to;->h:C

    iget-object v4, p0, Lcom/sunia/HTREnginev2/to;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/to;->j:[Ljava/lang/reflect/Field;

    move-object v6, p1

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->a(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-void
.end method
