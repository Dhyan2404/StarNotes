package com.google.common.graph;

import com.sunia.HTREnginev2.vnf;

@vnf
/* loaded from: classes6.dex */
public final class GraphConstants {

    /* renamed from: a */
    public static final int f34691a = 2;

    /* renamed from: b */
    public static final int f34692b = 10;

    /* renamed from: c */
    public static final int f34693c = 20;

    /* renamed from: d */
    public static final float f34694d = 1.0f;

    /* renamed from: e */
    public static final int f34695e = 2;

    /* renamed from: f */
    public static final String f34696f = "Node %s is not an element of this graph.";

    /* renamed from: g */
    public static final String f34697g = "Edge %s is not an element of this graph.";

    /* renamed from: h */
    public static final String f34698h = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.";

    /* renamed from: i */
    public static final String f34699i = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.";

    /* renamed from: j */
    public static final String f34700j = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.";

    /* renamed from: k */
    public static final String f34701k = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.";

    /* renamed from: l */
    public static final String f34702l = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.";

    /* renamed from: m */
    public static final String f34703m = "Edge %s already exists in the graph.";

    /* renamed from: n */
    public static final String f34704n = "Mismatch: unordered endpoints cannot be used with directed graphs";

    /* loaded from: classes6.dex */
    public enum Presence {
        EDGE_EXISTS
    }
}
