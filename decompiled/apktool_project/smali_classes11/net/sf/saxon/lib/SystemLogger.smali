.class public Lnet/sf/saxon/lib/SystemLogger;
.super Lnet/sf/saxon/lib/Logger;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/lib/Logger;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/SystemLogger;->b:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/logging/Level;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p0
.end method

.method public println(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/SystemLogger;->b:Ljava/util/logging/Logger;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/SystemLogger;->a(I)Ljava/util/logging/Level;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
