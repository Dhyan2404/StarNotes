.class public Lorg/mortbay/jetty/security/ConstraintMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lorg/mortbay/jetty/security/Constraint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraint()Lorg/mortbay/jetty/security/Constraint;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->c:Lorg/mortbay/jetty/security/Constraint;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPathSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setConstraint(Lorg/mortbay/jetty/security/Constraint;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->c:Lorg/mortbay/jetty/security/Constraint;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->a:Ljava/lang/String;

    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->b:Ljava/lang/String;

    return-void
.end method
