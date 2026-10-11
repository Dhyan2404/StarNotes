.class Lorg/apache/commons/math3/ode/ParameterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f30ca7c420ea6a3L


# instance fields
.field private hP:D

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->parameterName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    return-void
.end method


# virtual methods
.method public getHP()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    return-wide v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->parameterName:Ljava/lang/String;

    return-object p0
.end method

.method public setHP(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ParameterConfiguration;->hP:D

    return-void
.end method
