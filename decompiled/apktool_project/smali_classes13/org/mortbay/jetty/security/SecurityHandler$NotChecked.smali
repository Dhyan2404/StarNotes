.class public Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SecurityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotChecked"
.end annotation


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/security/SecurityHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SecurityHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->e:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->e:Lorg/mortbay/jetty/security/SecurityHandler;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NOT CHECKED"

    return-object p0
.end method
