.class public final Lcom/oplus/ocs/base/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/utils/e$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/oplus/ocs/base/utils/e$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/oplus/ocs/base/utils/e$a;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/base/utils/e$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
