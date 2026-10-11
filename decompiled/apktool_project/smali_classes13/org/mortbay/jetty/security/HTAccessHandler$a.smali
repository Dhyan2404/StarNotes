.class public Lorg/mortbay/jetty/security/HTAccessHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HTAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public final synthetic f:Lorg/mortbay/jetty/security/HTAccessHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HTAccessHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$a;->f:Lorg/mortbay/jetty/security/HTAccessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler$a;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
