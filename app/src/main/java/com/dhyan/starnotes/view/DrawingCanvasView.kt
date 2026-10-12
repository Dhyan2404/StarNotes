package com.dhyan.starnotes.view

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Path
import android.graphics.PointF
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import org.json.JSONArray
import org.json.JSONException
import org.json.JSONObject

class DrawingCanvasView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {
    data class StrokePath(
        val path: Path, val color: Int, val strokeWidth: Float,
        val isEraser: Boolean = false, val points: MutableList<PointF> = mutableListOf()
    )

    private val paths = mutableListOf<StrokePath>()
    private var currentStroke: StrokePath? = null
    private var activePointerId = MotionEvent.INVALID_POINTER_ID
    private var currentColor = Color.BLACK
    private var currentStrokeWidth = 8f
    private var isEraserMode = false
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.DITHER_FLAG).apply {
        style = Paint.Style.STROKE
        strokeJoin = Paint.Join.ROUND
        strokeCap = Paint.Cap.ROUND
    }

    fun setPenColor(color: Int) {
        currentColor = color
        isEraserMode = false
    }

    fun setStrokeWidth(width: Float) {
        require(width.isFinite() && width > 0f)
        currentStrokeWidth = width
    }

    fun setEraserMode(enabled: Boolean) { isEraserMode = enabled }
    fun isEmpty(): Boolean = paths.isEmpty() && currentStroke == null

    fun clearCanvas() {
        cancelStroke()
        paths.clear()
        invalidate()
    }

    fun undo() {
        cancelStroke()
        if (paths.isNotEmpty()) paths.removeAt(paths.lastIndex)
        invalidate()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.drawColor(Color.WHITE)
        for (stroke in paths) drawStroke(canvas, stroke)
        currentStroke?.let { drawStroke(canvas, it) }
    }

    private fun drawStroke(canvas: Canvas, stroke: StrokePath) {
        paint.color = if (stroke.isEraser) Color.WHITE else stroke.color
        paint.strokeWidth = stroke.strokeWidth
        if (stroke.points.size == 1) {
            val point = stroke.points.first()
            canvas.drawPoint(point.x, point.y, paint)
        } else {
            canvas.drawPath(stroke.path, paint)
        }
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                activePointerId = event.getPointerId(0)
                currentStroke = StrokePath(Path(), currentColor, currentStrokeWidth, isEraserMode)
                addPoint(event.x, event.y)
                parent?.requestDisallowInterceptTouchEvent(true)
                invalidate()
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                val index = event.findPointerIndex(activePointerId)
                if (index >= 0) {
                    for (position in 0 until event.historySize) {
                        addPoint(event.getHistoricalX(index, position), event.getHistoricalY(index, position))
                    }
                    addPoint(event.getX(index), event.getY(index))
                    invalidate()
                }
                return true
            }
            MotionEvent.ACTION_UP, MotionEvent.ACTION_POINTER_UP -> {
                if (event.getPointerId(event.actionIndex) == activePointerId) {
                    addPoint(event.getX(event.actionIndex), event.getY(event.actionIndex))
                    currentStroke?.let { paths.add(it) }
                    cancelStroke()
                    invalidate()
                    performClick()
                }
                return true
            }
            MotionEvent.ACTION_POINTER_DOWN -> return true
            MotionEvent.ACTION_CANCEL -> {
                cancelStroke()
                invalidate()
                return true
            }
        }
        return super.onTouchEvent(event)
    }

    override fun performClick(): Boolean {
        super.performClick()
        return true
    }

    private fun addPoint(x: Float, y: Float) {
        if (!x.isFinite() || !y.isFinite()) return
        val stroke = currentStroke ?: return
        if (stroke.points.lastOrNull()?.let { it.x == x && it.y == y } == true) return
        if (stroke.points.isEmpty()) stroke.path.moveTo(x, y) else stroke.path.lineTo(x, y)
        stroke.points.add(PointF(x, y))
    }

    private fun cancelStroke() {
        currentStroke = null
        activePointerId = MotionEvent.INVALID_POINTER_ID
        parent?.requestDisallowInterceptTouchEvent(false)
    }

    fun serializeDrawing(): String {
        val result = JSONArray()
        for (stroke in paths + listOfNotNull(currentStroke)) {
            val points = JSONArray()
            for (point in stroke.points) {
                points.put(JSONObject().put("x", point.x.toDouble()).put("y", point.y.toDouble()))
            }
            result.put(JSONObject()
                .put("color", stroke.color).put("width", stroke.strokeWidth.toDouble())
                .put("isEraser", stroke.isEraser).put("points", points))
        }
        return result.toString()
    }

    fun deserializeDrawing(jsonString: String) {
        val restored = mutableListOf<StrokePath>()
        try {
            val root = JSONArray(jsonString)
            for (index in 0 until root.length()) {
                val item = root.getJSONObject(index)
                val width = item.getDouble("width").toFloat()
                require(width.isFinite() && width > 0f) { "Invalid stroke width" }
                val stroke = StrokePath(Path(), item.getInt("color"), width, item.optBoolean("isEraser"))
                val points = item.getJSONArray("points")
                for (position in 0 until points.length()) {
                    val point = points.getJSONObject(position)
                    val x = point.getDouble("x").toFloat()
                    val y = point.getDouble("y").toFloat()
                    require(x.isFinite() && y.isFinite()) { "Invalid stroke point" }
                    if (stroke.points.isEmpty()) stroke.path.moveTo(x, y) else stroke.path.lineTo(x, y)
                    stroke.points.add(PointF(x, y))
                }
                if (stroke.points.isNotEmpty()) restored.add(stroke)
            }
        } catch (error: JSONException) {
            throw IllegalArgumentException("Invalid drawing data", error)
        }
        cancelStroke()
        paths.clear()
        paths.addAll(restored)
        invalidate()
    }
}
