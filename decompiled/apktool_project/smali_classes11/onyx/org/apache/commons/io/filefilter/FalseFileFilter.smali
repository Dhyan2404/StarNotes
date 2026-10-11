.class public Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final FALSE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field private static final TO_STRING:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x562f51300a5686f8L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->TO_STRING:Ljava/lang/String;

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 3
    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public and(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object p0
.end method

.method public negate()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object p0
.end method

.method public or(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->TO_STRING:Ljava/lang/String;

    return-object p0
.end method
