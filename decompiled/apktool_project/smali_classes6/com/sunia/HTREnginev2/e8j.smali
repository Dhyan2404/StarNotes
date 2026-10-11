.class public final Lcom/sunia/HTREnginev2/e8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/n4m;


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/htd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/e8j$c;
    }
.end annotation


# static fields
.field public static final b:Lcom/sunia/HTREnginev2/ymj;


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/ymj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/e8j$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e8j$a;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/e8j;->b:Lcom/sunia/HTREnginev2/ymj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sunia/HTREnginev2/e8j;->c()Lcom/sunia/HTREnginev2/ymj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/e8j;-><init>(Lcom/sunia/HTREnginev2/ymj;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/ymj;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfoFactory"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/ymj;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e8j;->a:Lcom/sunia/HTREnginev2/ymj;

    return-void
.end method

.method public static b(Lcom/sunia/HTREnginev2/xmj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/e8j$b;->a:[I

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/xmj;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Lcom/sunia/HTREnginev2/ymj;
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/e8j$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sunia/HTREnginev2/ymj;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sunia/HTREnginev2/wyg;->c()Lcom/sunia/HTREnginev2/wyg;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/sunia/HTREnginev2/e8j;->d()Lcom/sunia/HTREnginev2/ymj;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/e8j$c;-><init>([Lcom/sunia/HTREnginev2/ymj;)V

    return-object v0
.end method

.method public static d()Lcom/sunia/HTREnginev2/ymj;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/ymj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/sunia/HTREnginev2/e8j;->b:Lcom/sunia/HTREnginev2/ymj;

    return-object v0
.end method

.method public static e(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;)Lcom/google/protobuf/z;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sunia/HTREnginev2/xmj;",
            ")",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/e8j;->b(Lcom/sunia/HTREnginev2/xmj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/xtj;->b()Lcom/sunia/HTREnginev2/vtj;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/o;->b()Lcom/google/protobuf/o;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/a0;->R()Lcom/google/protobuf/c0;

    move-result-object v5

    invoke-static {}, Lcom/sunia/HTREnginev2/m5g;->b()Lcom/google/protobuf/j;

    move-result-object v6

    invoke-static {}, Lcom/sunia/HTREnginev2/n8j;->b()Lcom/google/protobuf/q;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/u;->T(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;Lcom/sunia/HTREnginev2/vtj;Lcom/google/protobuf/o;Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/q;)Lcom/google/protobuf/u;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/xtj;->b()Lcom/sunia/HTREnginev2/vtj;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/o;->b()Lcom/google/protobuf/o;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/a0;->R()Lcom/google/protobuf/c0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/sunia/HTREnginev2/n8j;->b()Lcom/google/protobuf/q;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/u;->T(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;Lcom/sunia/HTREnginev2/vtj;Lcom/google/protobuf/o;Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/q;)Lcom/google/protobuf/u;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/e8j;->b(Lcom/sunia/HTREnginev2/xmj;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sunia/HTREnginev2/xtj;->a()Lcom/sunia/HTREnginev2/vtj;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/o;->a()Lcom/google/protobuf/o;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/a0;->Q()Lcom/google/protobuf/c0;

    move-result-object v5

    invoke-static {}, Lcom/sunia/HTREnginev2/m5g;->a()Lcom/google/protobuf/j;

    move-result-object v6

    invoke-static {}, Lcom/sunia/HTREnginev2/n8j;->a()Lcom/google/protobuf/q;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/u;->T(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;Lcom/sunia/HTREnginev2/vtj;Lcom/google/protobuf/o;Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/q;)Lcom/google/protobuf/u;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sunia/HTREnginev2/xtj;->a()Lcom/sunia/HTREnginev2/vtj;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/o;->a()Lcom/google/protobuf/o;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/a0;->Q()Lcom/google/protobuf/c0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/sunia/HTREnginev2/n8j;->a()Lcom/google/protobuf/q;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/u;->T(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;Lcom/sunia/HTREnginev2/vtj;Lcom/google/protobuf/o;Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/q;)Lcom/google/protobuf/u;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/z<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/a0;->K(Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e8j;->a:Lcom/sunia/HTREnginev2/ymj;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/ymj;->b(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/xmj;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/xmj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/a0;->R()Lcom/google/protobuf/c0;

    move-result-object p1

    invoke-static {}, Lcom/sunia/HTREnginev2/m5g;->b()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/xmj;->b()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/protobuf/v;->l(Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/v;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/a0;->Q()Lcom/google/protobuf/c0;

    move-result-object p1

    invoke-static {}, Lcom/sunia/HTREnginev2/m5g;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/xmj;->b()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/protobuf/v;->l(Lcom/google/protobuf/c0;Lcom/google/protobuf/j;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/v;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/e8j;->e(Ljava/lang/Class;Lcom/sunia/HTREnginev2/xmj;)Lcom/google/protobuf/z;

    move-result-object p0

    return-object p0
.end method
