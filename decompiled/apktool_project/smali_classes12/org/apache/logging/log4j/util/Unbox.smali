.class public Lorg/apache/logging/log4j/util/Unbox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/Unbox$b;,
        Lorg/apache/logging/log4j/util/Unbox$c;
    }
.end annotation

.annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    value = {
        "allocation"
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/logging/log4j/Logger;

.field public static final b:I = 0x20

.field public static final c:I = 0x20

.field public static final d:I

.field public static final e:I

.field public static f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/util/Unbox$b;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lorg/apache/logging/log4j/util/Unbox$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->a:Lorg/apache/logging/log4j/Logger;

    const-string v0, "log4j.unbox.ringbuffer.size"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/util/Unbox;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/logging/log4j/util/Unbox;->e:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/logging/log4j/util/Unbox$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/Unbox$c;-><init>(Lorg/apache/logging/log4j/util/Unbox$a;)V

    sput-object v0, Lorg/apache/logging/log4j/util/Unbox;->g:Lorg/apache/logging/log4j/util/Unbox$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    sget v0, Lorg/apache/logging/log4j/util/Unbox;->d:I

    return v0
.end method

.method public static synthetic b()I
    .locals 1

    sget v0, Lorg/apache/logging/log4j/util/Unbox;->e:I

    return v0
.end method

.method public static box(B)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 7
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(C)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(D)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(F)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(I)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(J)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 6
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(S)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static box(Z)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
        value = {
            "allocation"
        }
    .end annotation

    .line 8
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v1, :cond_0

    sget-object v3, Lorg/apache/logging/log4j/util/Unbox;->a:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Invalid {} {}, using minimum size {}."

    invoke-interface {v3, v4, p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v1

    :cond_0
    invoke-static {v3}, Lorg/apache/logging/log4j/util/Unbox;->d(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object v3, Lorg/apache/logging/log4j/util/Unbox;->a:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Invalid {} {}, using default size {}."

    invoke-interface {v3, v4, p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public static d(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0
.end method

.method public static e()I
    .locals 1

    sget v0, Lorg/apache/logging/log4j/util/Unbox;->d:I

    return v0
.end method

.method public static f()Ljava/lang/StringBuilder;
    .locals 1

    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->g()Lorg/apache/logging/log4j/util/Unbox$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/Unbox$b;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/util/Unbox;->g:Lorg/apache/logging/log4j/util/Unbox$c;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/Unbox$c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static g()Lorg/apache/logging/log4j/util/Unbox$b;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/util/Unbox;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/Unbox$b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/util/Unbox$b;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/Unbox$b;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/util/Unbox;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
