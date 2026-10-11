.class public final Lcom/sunia/HTREnginev2/w7l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/w7l$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/w7l$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "createSecurityManager"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/w7l$b;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/w7l$b;-><init>(Lcom/sunia/HTREnginev2/w7l$a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lcom/sunia/HTREnginev2/w7l;->a:Lcom/sunia/HTREnginev2/w7l$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Stack;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/w7l;->a:Lcom/sunia/HTREnginev2/w7l$b;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/w7l$b;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/w7l;->a:Lcom/sunia/HTREnginev2/w7l$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
